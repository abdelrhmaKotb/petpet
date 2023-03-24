package gov.iti.jets.persistent.dao;

import java.util.List;

import gov.iti.jets.persistent.dao.interfaces.CategoryDao;
import gov.iti.jets.persistent.dto.getCategoryAnditsQuantityDTO;
import gov.iti.jets.persistent.entity.Category;
import jakarta.persistence.*;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

public class CategoryDaoImpl extends RepositoryImpl<Category,Integer> implements CategoryDao   {
    public CategoryDaoImpl(){
        super(Category.class);
    }
    @Override
    public List<String> AllCategoryName() {

        CriteriaQuery<String> q = _criteriaBuilder.createQuery(String.class);
        Root<Category> category = q.from(Category.class);
        q.select(category.get("name"));

        List<String> result = _entityManager.createQuery(q).getResultList();

        return result;
    }
    @Override
    public int getCategoryId(String CategoryName) {


        CriteriaQuery<Integer> q = _criteriaBuilder.createQuery(Integer.class);
        Root<Category> category = q.from(Category.class);
        q.select(category.get("id")).where(_criteriaBuilder.equal(category.<String>get("name"), CategoryName));

        List<Integer> result = _entityManager.createQuery(q).getResultList();
        if (result.isEmpty())
            return 0;    
        return result.get(0);
    }
    @Override
    public boolean isCategory(String CategoryName) {

        CriteriaQuery<Integer> q = _criteriaBuilder.createQuery(Integer.class);
        Root<Category> category = q.from(Category.class);

        q.select(category.get("id")).where(_criteriaBuilder.equal(category.<String>get("name"), CategoryName));
        System.out.println(CategoryName);

        List<Integer> result = _entityManager.createQuery(q).getResultList();

        if (result.isEmpty()){
            System.out.println("   0 ");
            return false;
        }
        System.out.println(result.get(0));
        return true;
    }

    @Override
    public List<getCategoryAnditsQuantityDTO> getCategoryAndQuantity() {
      /*  CriteriaQuery<Tuple> query = _criteriaBuilder.createQuery(Tuple.class);
        Root<Category> categoryRoot = query.from(Category.class);
        Join<Product, Category> b = categoryRoot.join("id" , JoinType.INNER);
        query.groupBy(b.get("id"),b.get("name"));
        query.multiselect(categoryRoot.get("id"),categoryRoot.get("name"), _criteriaBuilder.count(b));
        TypedQuery<Tuple> typedQuery = _entityManager.createQuery(query);
        List<Tuple> resultList = typedQuery.getResultList();

        Map<Map<Integer,String>,Long> categoryMap = new LinkedHashMap<>();
        Map<Integer,String> map=null;
        for ( Tuple tuple : resultList ) {
            map  = new LinkedHashMap<>();
            map.put((Integer) tuple.get( 0 ),(String) tuple.get( 1 ));

            categoryMap.put(map, (Long) tuple.get( 2 ));
           }
*/
        String countQ = "Select new gov.iti.jets.persistent.dto.getCategoryAnditsQuantityDTO(p.category.name, p.category.id, count(p.id))  FROM Product p  group by p.category.id";
        Query countQuery = _entityManager.createQuery(countQ, getCategoryAnditsQuantityDTO.class);
        List<getCategoryAnditsQuantityDTO> countResults = countQuery.getResultList();
        countResults.forEach(e->{
            System.out.println("List"+e.getProductsQuantity());
        });
        return countResults;
    }

    @Override
    public void AddCategory(String cName,int parentId){
        Category c= new Category();
        c.setName(cName);
        c.setParentId(parentId);
        _entityManager.getTransaction().begin();
        System.out.println("malek");
        _entityManager.persist(c);
        System.out.println("malek");

        _entityManager.getTransaction().commit();

    }
}

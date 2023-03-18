package gov.iti.jets.persistent.dao;

import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.persistent.entity.Category;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import jakarta.validation.constraints.Null;

public class CategoryDao {

    EntityManagerFactory ef = Persistence.createEntityManagerFactory("default");
    EntityManager em = ef.createEntityManager();

    public List<String> AllCategoryName() {

        CriteriaBuilder cb = ef.getCriteriaBuilder();
        CriteriaQuery<String> q = cb.createQuery(String.class);
        Root<Category> category = q.from(Category.class);
        q.select(category.get("name"));

        List<String> result = em.createQuery(q).getResultList();

        return result;
    }

    public int getCategoryId(String CategoryName) {

        CriteriaBuilder cb = ef.getCriteriaBuilder();
        CriteriaQuery<Integer> q = cb.createQuery(Integer.class);
        Root<Category> category = q.from(Category.class);
        q.select(category.get("id")).where(cb.equal(category.<String>get("name"), CategoryName));

        List<Integer> result = em.createQuery(q).getResultList();
        if (result.isEmpty())
            return 0;    
        return result.get(0);
    }
    public boolean isCategory(String CategoryName) {

        CriteriaBuilder cb = ef.getCriteriaBuilder();
        CriteriaQuery<Integer> q = cb.createQuery(Integer.class);
        Root<Category> category = q.from(Category.class);

        q.select(category.get("id")).where(cb.equal(category.<String>get("name"), CategoryName));
        System.out.println(CategoryName);

        List<Integer> result = em.createQuery(q).getResultList();

        if (result.isEmpty()){
            System.out.println("   0 ");
            return false;
        }
        System.out.println(result.get(0));
        return true;
    }
public void AddCategory(String cName,int parentId){
    Category c= new Category();
    c.setName(cName);
    c.setParentId(parentId);
    em.getTransaction().begin();
    System.out.println("malek");
    em.persist(c);
    System.out.println("malek");

    em.getTransaction().commit();
    System.out.println("malek");

  

}
}

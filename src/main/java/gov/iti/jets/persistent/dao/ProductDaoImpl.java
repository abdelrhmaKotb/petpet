package gov.iti.jets.persistent.dao;

import gov.iti.jets.persistent.dao.interfaces.ProductDao;
import gov.iti.jets.persistent.dto.TrendyProductsDTO;
import gov.iti.jets.persistent.entity.Product;
import jakarta.persistence.Query;

import java.util.List;

public class ProductDaoImpl extends RepositoryImpl<Product,Integer> implements ProductDao {
    public ProductDaoImpl(){
        super(Product.class);
    }
    @Override
    public List<Product> findAllProductsByPage(Integer pageNumber) {
        Integer firstResult = 10*pageNumber;

        Query query = _entityManager.createQuery("From Product p ORDER BY p.id DESC");
        query.setFirstResult(firstResult);
        query.setMaxResults(10);
        List<Product> productList = query.getResultList();


        return productList;
    }

    @Override
    public long totalOrders() {

        String countQ = "Select COUNT(p) from Product p ";
        Query countQuery = _entityManager.createQuery(countQ);
        long countResults = (long) countQuery.getSingleResult();
        return countResults;
    }

    @Override
    public double highestPrise() {
        String maxPrise = "Select MAX(p.price) from Product p";
        Query maxQuery = _entityManager.createQuery(maxPrise);
        Object maxResults =  maxQuery.getSingleResult();

        Double max = 0d;

        if(maxResults != null){
            max = (Double) maxResults;
        }

        return max;
    }

    @Override
    public List<Product> filterProducts(double price, List<Integer> categoriesId) {

        String maxPrise = "Select p from Product p where  p.category.id in( :category) and  p.price between 0 and  :price  ";
        Query maxQuery = _entityManager.createQuery(maxPrise)
                .setParameter("category",categoriesId)
                .setParameter("price",price);
        List<Product> filteredProducts =  maxQuery.getResultList();
        return filteredProducts;
    }
    @Override
    public List<TrendyProductsDTO> firstThreeTrendyProducts() {

        String maxPrise = """
                            select new gov.iti.jets.persistent.dto.TrendyProductsDTO( od.product,od.product.category ,count(od)) 
                            from OrderDetail od  
                            group by od.product.category ,od.product 
                            having od.product.category.parentId = 0
                            ORDER BY COUNT(od) DESC 
                            """;
        Query maxQuery = _entityManager.createQuery(maxPrise, TrendyProductsDTO.class);
        List<TrendyProductsDTO> filteredProducts =  maxQuery.getResultList();
        filteredProducts.forEach(element ->{
            System.out.println(element);
        });

        return filteredProducts;
    }

}

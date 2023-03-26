package gov.iti.jets.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.persistent.dao.OrderDaoImpl;
import gov.iti.jets.persistent.dao.ProductDaoImpl;
import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.OrderDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.dto.TrendyProductsDTO;
import gov.iti.jets.persistent.entity.Order;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.services.mapper.OrderMapper;
import gov.iti.jets.services.mapper.ProductMapper;

public class GetProductsService {

    public List<ProductDto> getProducts() {
        RepositoryImpl<Product, Integer> repo = new RepositoryImpl<>(Product.class);
        List<Product> products = repo.findAll();

        List<ProductDto> productsList = new ArrayList<>();

        products.forEach(e -> {
            productsList.add(new ProductMapper().toDto(e));
        });

        return productsList;
    }

    public ProductDto getProduct(int productID){
        RepositoryImpl<Product,Integer> repo = new RepositoryImpl<>(Product.class);

        return new ProductMapper().toDto(repo.find(productID));
    }
    public ProductDto getFromContext(int productID){
        RepositoryImpl<Product,Integer> repo = new RepositoryImpl<>(Product.class);

        return new ProductMapper().toDto(repo.findFromContext(productID));
    }
    public Product getProductFromContext(int productID){
        RepositoryImpl<Product,Integer> repo = new RepositoryImpl<>(Product.class);

        return repo.find(productID);
    }
    public long totalPages(){
        ProductDaoImpl productDao = new ProductDaoImpl();

        long totalOrders = productDao.totalOrders();

        return totalOrders;
    }
    public   List<ProductDto> getproductsByPage(Integer pageNumber) {
        ProductDaoImpl productDao = new ProductDaoImpl();

        List<Product> productList = productDao.findAllProductsByPage(pageNumber);

        List<ProductDto> productDtos = new ArrayList<>();

        productList.forEach(e -> {
            productDtos.add(new ProductMapper().toDto(e));
        });

        return productDtos;
    }
    public double getHighestPrise(){
        ProductDaoImpl productDao = new ProductDaoImpl();
        double highestPrise = productDao.highestPrise();
        return highestPrise;
    }
    public List<ProductDto> filterProducts(double price ,List<Integer> categoriesId){
        ProductDaoImpl productDao = new ProductDaoImpl();
        List<Product> productList = productDao.filterProducts(price,categoriesId);
        List<ProductDto> productDtos =new ArrayList<>();

        productList.forEach(e -> {
            productDtos.add(new ProductMapper().toDto(e));
        });

        return productDtos;
    }
    public List<TrendyProductsDTO> firstThreeProducts(){
        ProductDaoImpl productDao = new ProductDaoImpl();
        List<TrendyProductsDTO> productList = productDao.firstThreeTrendyProducts();
        return productList;
    }
}

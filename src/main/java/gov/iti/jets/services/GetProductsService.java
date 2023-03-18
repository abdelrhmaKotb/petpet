package gov.iti.jets.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.Product;
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

}

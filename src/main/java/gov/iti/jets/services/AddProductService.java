package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.services.mapper.ProductMapper;

public class AddProductService {

    public Integer addProduct(ProductDto product) {

        RepositoryImpl<Product, Integer> repo = new RepositoryImpl<>(Product.class);

        Product p = new ProductMapper().toEntity(product);

        System.out.println(p);

        Product result = repo.create(p); 

        if (result == null) {
            return null;
        }

        int id = result.getId();

        return id;
    }

}

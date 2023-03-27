package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.services.mapper.ProductMapper;

public class DeleteProductService {
    public Product deleteProduct(Integer productId) {

        RepositoryImpl<Product, Integer> repo = new RepositoryImpl<>(Product.class);
        Product  product = repo.find(productId);
        boolean result = repo.remove(product);

        return product;
    }
}

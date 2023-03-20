package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.services.mapper.ProductMapper;

public class DeleteProductService {
    public boolean deleteProduct(Product product) {

        RepositoryImpl<Product, Integer> repo = new RepositoryImpl<>(Product.class);

        boolean result = repo.remove(product);

        return result;
    }
}

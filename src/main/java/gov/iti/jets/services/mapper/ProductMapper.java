package gov.iti.jets.services.mapper;

import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.ProductDto;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.persistent.entity.ProductImage;

public class ProductMapper implements Mapper<Product, ProductDto> {

    @Override
    public ProductDto toDto(Product pro) {

        if (pro == null) {
            return null;
        }

        List<String> images = new ArrayList<>();

        List<ProductImage> imgs = pro.getImages();

        for (ProductImage productImage : imgs) {
            images.add(productImage.getImageUrl());
        }

        CategoryDto category = new CategoryMapper().toDto(pro.getCategory());
        ProductDto product = new ProductDto(pro.getId(), pro.getName(), pro.getPrice(), category, pro.getQuantity(),
                pro.getDescription(), images);
        return product;
    }

    @Override
    public Product toEntity(ProductDto pro) {

        List<String> images = pro.getImagesUlrs();

        List<ProductImage> imagesUlrs = new ArrayList<>();

        Product product = new Product();
        images.forEach(e -> imagesUlrs.add(new ProductImage(product, e)));

        product.setName(pro.getName());
        product.setPrice(pro.getPrice());
        product.setQuantity(pro.getQuantity());
        product.setDescription(pro.getDescription());
        product.setCategory(new CategoryMapper().toEntity(pro.getCategory()));
        product.setImages(imagesUlrs);

        return product;

    }

}

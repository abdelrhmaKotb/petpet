package gov.iti.jets.persistent.dto;

import gov.iti.jets.persistent.entity.Category;
import gov.iti.jets.persistent.entity.Product;

public class TrendyProductsDTO {
    Product product;
    Category category;
    long count ;



    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public TrendyProductsDTO() {
    }

    public TrendyProductsDTO(Product product, Category category, long count) {
        this.product = product;
        this.category = category;
        this.count = count;
    }

    @Override
    public String toString() {
        return "TrendyProductsDTO{" +
                "product=" + product +
                ", category=" + category +
                ", count=" + count +
                '}';
    }
}

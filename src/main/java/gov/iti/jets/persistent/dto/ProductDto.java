package gov.iti.jets.persistent.dto;

import java.util.ArrayList;
import java.util.List;

/**
 * ProductDto
 */
public class ProductDto {
   
    private Integer id;

    private String name;

    private Double price;
  
    private CategoryDto category;

    private Integer quantity;

  
    private String description;

    private List<String> imagesUlrs = new ArrayList<>();


  

    public ProductDto(String name, Double price, CategoryDto category, Integer quantity, String description,
            List<String> imagesUlrs) {
        this.name = name;
        this.price = price;
        this.category = category;
        this.quantity = quantity;
        this.description = description;
        this.imagesUlrs = imagesUlrs;
    }
    public ProductDto(Integer id, String name, Double price, CategoryDto category, Integer quantity, String description,
            List<String> imagesUlrs) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.category = category;
        this.quantity = quantity;
        this.description = description;
        this.imagesUlrs = imagesUlrs;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public CategoryDto getCategory() {
        return category;
    }

    public void setCategory(CategoryDto category) {
        this.category = category;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<String> getImagesUlrs() {
        return imagesUlrs;
    }

    public void setImagesUlrs(List<String> imagesUlrs) {
        this.imagesUlrs = imagesUlrs;
    }

    
}
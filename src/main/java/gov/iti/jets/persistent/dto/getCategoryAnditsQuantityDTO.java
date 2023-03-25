package gov.iti.jets.persistent.dto;

public class getCategoryAnditsQuantityDTO {
    String name;
    Integer id;
    Long ProductsQuantity;

    public getCategoryAnditsQuantityDTO() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getProductsQuantity() {
        return ProductsQuantity;
    }

    public void setProductsQuantity(Long productsQuantity) {
        ProductsQuantity = productsQuantity;
    }

    public getCategoryAnditsQuantityDTO(String name, Integer id, Long productsQuantity) {
        this.name = name;
        this.id = id;
        ProductsQuantity = productsQuantity;
    }
}

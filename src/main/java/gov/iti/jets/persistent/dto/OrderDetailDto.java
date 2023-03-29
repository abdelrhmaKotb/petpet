package gov.iti.jets.persistent.dto;


public class OrderDetailDto {

    private Integer orderId;

    private ProductDto product;
    private Integer quantity;


    public ProductDto getProduct() {
        return product;
    }

    public void setProduct(ProductDto product) {
        this.product = product;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public OrderDetailDto(Integer orderId, ProductDto product, Integer quantity) {
        this.orderId = orderId;
        this.product = product;
        this.quantity = quantity;
    }
}

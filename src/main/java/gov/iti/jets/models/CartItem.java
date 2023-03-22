package gov.iti.jets.models;

public class CartItem {

    private int productId;
    private String productName;
    private int productQty;
    private Double productPrice;

    public CartItem() {
    }

    public CartItem(int productId, String productName, int productQty,Double productPrice) {
        this.productId = productId;
        this.productName = productName;
        this.productQty = productQty;
        this.productPrice = productPrice;
    }

    

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

  

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductQty() {
        return productQty;
    }

    public void setProductQty(int productQty) {
        this.productQty = productQty;
    }

    @Override
    public String toString() {
        return "CartItem [productId=" + productId + ", productName=" + productName + ", productQty=" + productQty + "]";
    }
    

}

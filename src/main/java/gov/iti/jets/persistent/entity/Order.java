package gov.iti.jets.persistent.entity;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "`order`")
public class Order {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "created_at")
    private LocalDate createdAt;

    
    private String country;
    
    private String street;
    
    private String city;
    
    private String phone;
    
    private String ZIP;


    

    @Column(name = "total_price", precision = 10)
    private Double totalPrice;

    @Column(name = "status")
    private String status;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "order",cascade = { CascadeType.PERSIST,
        CascadeType.MERGE })
    List<OrderDetail> orderDetails = new ArrayList<>();

    String notes;

    public Order() {
    }

    public Order(Integer id, LocalDate createdAt, Double totalPrice, String status, User user) {
        this.id = id;
        this.createdAt = createdAt;
        this.totalPrice = totalPrice;
        this.status = status;
        this.user = user;
    }

    public Order(LocalDate createdAt, Double totalPrice, String status, User user) {
        this.createdAt = createdAt;
        this.totalPrice = totalPrice;
        this.status = status;
        this.user = user;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public LocalDate getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        this.createdAt = createdAt;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getStatus() {
        return status;
    }

    

    public void setStatus(String status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getZIP() {
        return ZIP;
    }

    public void setZIP(String zIP) {
        ZIP = zIP;
    }

    @Override
    public String toString() {
        return "Order [id=" + id + ", createdAt=" + createdAt + ", country=" + country + ", street=" + street
                + ", city=" + city + ", phone=" + phone + ", ZIP=" + ZIP + ", totalPrice=" + totalPrice + ", status="
                + status + ", user=" + user + ", orderDetails=" + ", notes=" + notes + "]";
    }

    
}
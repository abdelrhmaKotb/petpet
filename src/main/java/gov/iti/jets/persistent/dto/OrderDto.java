package gov.iti.jets.persistent.dto;

import gov.iti.jets.persistent.entity.Order;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * A DTO for the {@link Order} entity
 */
public class OrderDto implements Serializable {
    private final Integer id;
    private final Date createdAt;
    private final Double totalPrice;
    private final String status;
    

    public OrderDto(Integer id, Date createdAt, Double totalPrice, String status) {
        this.id = id;
        this.createdAt = createdAt;
        this.totalPrice = totalPrice;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public String getStatus() {
        return status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderDto entity = (OrderDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.createdAt, entity.createdAt) &&
                Objects.equals(this.totalPrice, entity.totalPrice) &&
                Objects.equals(this.status, entity.status);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, createdAt, totalPrice, status);
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "createdAt = " + createdAt + ", " +
                "totalPrice = " + totalPrice + ", " +
                "status = " + status + ")";
    }
}
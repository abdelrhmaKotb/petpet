package gov.iti.jets.persistent.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.Entity;
import org.hibernate.Hibernate;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class InterestId implements Serializable {
    private static final long serialVersionUID = 2921898278925120749L;
    @Column(name = "user_id")
    private Integer userId;

    @Column(name = "interest_id")
    private Integer interestId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getInterestId() {
        return interestId;
    }

    public void setInterestId(Integer interestId) {
        this.interestId = interestId;
    }

    public InterestId() {
    }

    public InterestId(Integer userId, Integer interestId) {
        this.userId = userId;
        this.interestId = interestId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        InterestId entity = (InterestId) o;
        return Objects.equals(this.interestId, entity.interestId) &&
                Objects.equals(this.userId, entity.userId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(interestId, userId);
    }

}
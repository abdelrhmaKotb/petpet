package gov.iti.jets.persistent.dto;

import java.math.BigDecimal;
import java.time.LocalDate;

public class UserDTO {
    int id;
    
    String name;
    String email;
    String phone;
    String password;
    String job;
    BigDecimal creditLimit;
    String country;
    String street;
    String zip;
    String city;
    LocalDate birthday;

    
    
    public UserDTO(String name, String email, String phone, String password, String job, BigDecimal creditLimit,
            String country, String street, String zip, String city, LocalDate birthday) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.job = job;
        this.creditLimit = creditLimit;
        this.country = country;
        this.street = street;
        this.zip = zip;
        this.city = city;
        this.birthday = birthday;
    }
    public UserDTO(){}
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getJob() {
        return job;
    }
    public void setJob(String job) {
        this.job = job;
    }
    public BigDecimal getCreditLimit() {
        return creditLimit;
    }
    public void setCreditLimit(BigDecimal creditLimit) {
        this.creditLimit = creditLimit;
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
    public String getZip() {
        return zip;
    }
    public void setZip(String zip) {
        this.zip = zip;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public LocalDate getBirthday() {
        return birthday;
    }
    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }
    
}

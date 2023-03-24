package gov.iti.jets.persistent.dto;


import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class UserDTO {
    int id;
    
    String firstName;
    String userName;
    String phone;
    String password;
    String job;
    BigDecimal creditLimit;
    String country;
    String street;
    String zip;
    String city;
    LocalDate birthday;
    List<OrderDto> orderDTOS = new ArrayList<>();

    public UserDTO(String userName) {
        this.userName = userName;
    }


    public UserDTO(int id, String firstName, String userName, String phone, String password, String job,
                   BigDecimal creditLimit, String country, String street, String zip, String city, LocalDate birthday) {
        this.id = id;
        this.firstName = firstName;
        this.userName = userName;
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

    public UserDTO(String name, String userName, String phone, String password, String job, BigDecimal creditLimit,
                   String country, String street, String zip, String city, LocalDate birthday) {
        this.firstName = name;
        this.userName = userName;
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
        return firstName;
    }
    public void setName(String name) {
        this.firstName = name;
    }
    public String getEmail() {
        return userName;
    }
    public void setEmail(String email) {
        this.userName = email;
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

    @Override
    public String toString() {
        return "UserDTO [id=" + id + ", firstName=" + firstName + ", userName=" + userName + ", phone=" + phone
                + ", password=" + password + ", job=" + job + ", creditLimit=" + creditLimit + ", country=" + country
                + ", street=" + street + ", zip=" + zip + ", city=" + city + ", birthday=" + birthday + "]";
    }
    
    
    public List<OrderDto> getOrderDTOS() {
        return orderDTOS;
    }

    public void setOrderDTOS(List<OrderDto> orderDTOS) {
        this.orderDTOS = orderDTOS;
    }

}

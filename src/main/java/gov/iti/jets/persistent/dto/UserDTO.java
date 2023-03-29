package gov.iti.jets.persistent.dto;


import gov.iti.jets.persistent.entity.Interest;

import java.util.ArrayList;
import java.util.List;

public class UserDTO {
    Integer id;

    String firstName;
    String userName;
    String phone;
    String password;
    String job;
    Double creditLimit;
    String country;
    String street;
    String zip;
    String city;
    java.util.Date birthday;
    List<OrderDto> orderDTOS = new ArrayList<>();
    List<Interest> interestDtos = new ArrayList<>();
    boolean isAdmin;

    public UserDTO(String userName) {
        this.userName = userName;
    }

    public UserDTO(Integer id, String firstName, String userName, String phone, String password, String job,
            Double creditLimit, String country, String street, String zip, String city, java.util.Date birthday) {
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
    public UserDTO(Integer id, String firstName, String userName, String phone, String password, String job,
                   Double creditLimit, String country, String street, String zip, String city, java.util.Date birthday,boolean isAdmin,List<Interest> interestList) {
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
        this.isAdmin = isAdmin;
        this.interestDtos = interestList;
    }
    public UserDTO(Integer id, String firstName, String userName, String phone, String password, String job,
            Double creditLimit, String country, String street, String zip, String city, java.util.Date birthday,boolean isAdmin) {
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
        this.isAdmin = isAdmin;
    }

    public UserDTO(String name, String userName, String phone, String password, String job, Double creditLimit,
            String country, String street, String zip, String city, java.util.Date birthday) {
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

    public UserDTO(String firstName, String userName, String phone, String password, String job, Double creditLimit,
                   String country, String street, String zip, String city, java.util.Date birthday, List<Interest> interest) {
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
        this.interestDtos = interest;
    }

    public UserDTO(){}


    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public Double getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(Double creditLimit) {
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

    public java.util.Date getBirthday() {
        return birthday;
    }

    public void setBirthday(java.util.Date birthday) {
        this.birthday = birthday;
    }


    public List<Interest> getInterest() {
        return interestDtos;
    }

    public void setInterest(List<Interest> interestDtos) {
        this.interestDtos = interestDtos;
    }

    @Override
    public String toString() {
        return "UserDTO [id=" + id + ", firstName=" + firstName + ", userName=" + userName + ", phone=" + phone
                + ", password=" + password + ", job=" + job + ", creditLimit=" + creditLimit + ", country=" + country
                + ", street=" + street + ", zip=" + zip + ", city=" + city + ", birthday=" + birthday + ", orderDTOS="
                + orderDTOS + ", isAdmin=" + isAdmin + "]";
    }

    public List<OrderDto> getOrderDTOS() {
        return orderDTOS;
    }

    public void setOrderDTOS(List<OrderDto> orderDTOS) {
        this.orderDTOS = orderDTOS;
    }

}

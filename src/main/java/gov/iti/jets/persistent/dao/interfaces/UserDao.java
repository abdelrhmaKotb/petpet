package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.entity.User;

import java.util.List;

public interface UserDao {
    User create(User user);

    User find();

    User findUserByEmail(String Email);
    List<User> findUserByPageNumber(Integer pageNumber);
    Long totalUsers();
}

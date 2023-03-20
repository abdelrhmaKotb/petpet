package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.entity.User;

public interface UserDao {
    User create(User user);

    User find();

    User findUserByEmail(String Email);
}

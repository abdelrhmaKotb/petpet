package gov.iti.jets.services;

import java.lang.annotation.Retention;

import gov.iti.jets.persistent.dao.UserDaoImpl;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.mapper.UserMapper;
import org.mindrot.jbcrypt.BCrypt;

public class loginService {

    public UserDTO isUser(String Email, String pass){
        UserMapper userMapper = new UserMapper();
        UserDaoImpl user = new UserDaoImpl();
        UserDTO userDTO = userMapper.toDto(user.findUserByEmail(Email));
        if(userDTO!= null && verifyPassword(pass , userDTO.getPassword()))
            return userDTO;
        return null;
    }
    public boolean isExistUser(String Email){
        UserMapper userMapper = new UserMapper();
        UserDaoImpl user = new UserDaoImpl();
        UserDTO userDTO = userMapper.toDto(user.findUserByEmail(Email));
        if(userDTO!= null)return true;

        return false;
    }
    private static boolean verifyPassword(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword); // verify the password against the stored hash
    }
}

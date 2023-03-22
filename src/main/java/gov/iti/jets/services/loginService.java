package gov.iti.jets.services;

import java.lang.annotation.Retention;

import gov.iti.jets.persistent.dao.UserDaoImpl;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.mapper.UserMapper;

public class loginService {

    public UserDTO isUser(String Email, String pass){
        UserMapper userMapper = new UserMapper();
        UserDaoImpl user = new UserDaoImpl();
        UserDTO userDTO = userMapper.toDto(user.findUserByEmail(Email));
        if(userDTO!= null&&pass.equals(userDTO.getPassword()))
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

}

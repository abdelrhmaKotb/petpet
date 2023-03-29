package gov.iti.jets.services;

import java.math.BigDecimal;
import java.time.LocalDate;

import org.mindrot.jbcrypt.BCrypt;

import gov.iti.jets.persistent.dao.UserDaoImpl;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.services.mapper.UserMapper;

public class UpdateUserService {
    public UserDTO getUserDTOById(int id) {
        UserDaoImpl u = new UserDaoImpl();
        return new UserMapper().toDto(u.findUserById(id));
    }

    public void saveUpdateUser(int userid,UserDTO user) {
        UserDaoImpl u = new UserDaoImpl();
        u.saveUpdateUser(user, userid);
        System.out.println("   nice  ");

    }

    
}

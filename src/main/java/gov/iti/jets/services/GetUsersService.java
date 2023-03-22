package gov.iti.jets.services;


import java.util.ArrayList;
import java.util.List;
import gov.iti.jets.persistent.dao.RepositoryImpl;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.mapper.UserMapper;

public class GetUsersService {
    public List<UserDTO> getAllUsers(){
        RepositoryImpl<User , Integer> repoUsers = new RepositoryImpl<>(User.class);
        List<User> users = repoUsers.findAll();

        List<UserDTO> userDTOS = new ArrayList<>();

        users.forEach(e -> userDTOS.add(new UserMapper().toDto(e)));
       return userDTOS;


    }
}

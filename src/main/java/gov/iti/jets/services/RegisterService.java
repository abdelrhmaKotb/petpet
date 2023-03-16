package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.mapper.UserMapper;

import java.util.List;

public class RegisterService {

    public void register(UserDTO userDTO){
        RepositoryImpl<User,Integer> repository = new RepositoryImpl<>(User.class);
        //validation
        User u = new UserMapper().toEntity(userDTO);

        repository.create(u);
    }
    public boolean isUserExists(UserDTO userDTO){
        RepositoryImpl<User,Integer> repo = new RepositoryImpl<>(User.class);

        User u = new UserMapper().toEntity(userDTO);

        boolean x = repo.findByEmail(u, u.getEmail());

//        for (User usr : users){
//            if(usr.getEmail() != null){
//                users.stream().forEach(s -> System.out.println(s.getEmail() + " " +s.getName()));
//                User user = users.stream().filter(x -> x.getEmail().equalsIgnoreCase(userDTO.getEmail()))
//                        .findFirst()
//                        .orElse(null);
//            }
//        }
       return x;

    }
}

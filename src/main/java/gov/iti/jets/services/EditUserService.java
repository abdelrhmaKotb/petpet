package gov.iti.jets.services;

import org.mindrot.jbcrypt.BCrypt;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;

public class EditUserService {

    public boolean save(UserDTO userDTO, String oldpass, String pass1, String pass2) {

        if(userDTO == null){
            return false;
        }

        RepositoryImpl<User, Integer> repo = new RepositoryImpl<>(User.class);
        User user = repo.find(userDTO.getId());

        if (oldpass != null && !oldpass.equals("")) {
            if (pass1.equals(pass2)) {
                String salt = BCrypt.gensalt(10); // generate a random salt
                String hashedPassword = BCrypt.hashpw(pass1, salt); // hash the password
                user.setPassword(hashedPassword);
            }
        }

        user.setCity(userDTO.getCity());
        user.setName(userDTO.getName());
        user.setCountry(userDTO.getCountry());
        user.setCreditLimit(userDTO.getCreditLimit());
        user.setJob(userDTO.getJob());
        user.setPhone(userDTO.getPhone());
        user.setZip(userDTO.getZip());
        user.setStreet(userDTO.getStreet());

        try {
            repo.update(user);
        } catch (Exception e) {
            return false;
        }

        return true;
    }
}

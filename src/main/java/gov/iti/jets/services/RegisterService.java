package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.services.mapper.UserMapper;

public class RegisterService {

    public void register(UserDTO userDTO) {
        RepositoryImpl<User, Integer> repository = new RepositoryImpl<>(User.class);

        User u = new UserMapper().toEntity(userDTO);

        repository.create(u);
    }

    public boolean isUserExists(UserDTO userDTO) {
        RepositoryImpl<User, Integer> repo = new RepositoryImpl<>(User.class);

        User u = new UserMapper().toEntity(userDTO);

        boolean x = repo.findByEmail(u, u.getEmail());

        return x;

    }
}

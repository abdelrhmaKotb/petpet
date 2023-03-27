package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.entity.User;

public class DeleteUserService {
    public boolean deleteUser(String id){
        RepositoryImpl<User , Integer> repoUser = new RepositoryImpl<>(User.class);

        User user = repoUser.find(Integer.parseInt(id));

        return repoUser.remove(user);

    }
}

package gov.iti.jets.services.mapper;

import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.User;

public class UserMapper implements Mapper<User, UserDTO> {

    @Override
    public User toEntity(UserDTO userDTO) {
        if (userDTO == null){
            return null;
        }
        User user = new User();
        user.setId(userDTO.getId());
        user.setBirthday(userDTO.getBirthday());
        user.setCity(userDTO.getCity());
        user.setCountry(userDTO.getCity());
        user.setCreditLimit(userDTO.getCreditLimit());
        user.setEmail(userDTO.getEmail());
        user.setJob(userDTO.getJob());
        user.setName(userDTO.getName());
        user.setPassword(userDTO.getPassword());
        user.setPhone(userDTO.getPhone());
        user.setZip(userDTO.getZip());
        user.setStreet(userDTO.getStreet());
        System.out.println("from mapper "+userDTO.getInterest());
        user.setInterest(userDTO.getInterest());
        user.setAdmin(userDTO.isAdmin());
        return user;

    }

    @Override
    public UserDTO toDto(User user) {
        if (user == null) {
            return null;
        }
        return new UserDTO(
                user.getId(),
                user.getName(),
                user.getEmail(),
                user.getPhone(),
                user.getPassword(),
                user.getJob(),
                user.getCreditLimit(),
                user.getCountry(),
                user.getStreet(),
                user.getZip(),
                user.getCity(),
                user.getBirthday(),
                user.isAdmin(),
                user.getInterest()
                );

    }

}

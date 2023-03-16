// package gov.iti.jets.persistent.mappers;

// import gov.iti.jets.persistent.dto.UserDTO;
// import gov.iti.jets.persistent.entity.User;

// public class UserMapper {
    
//     public User dtoToEntity(UserDTO userDTO){
//         User user = new User();
//         System.out.println("in mapper 1 " + userDTO.getName());
//         user.setBirthday(userDTO.getBirthday());
//         user.setCity(userDTO.getCity());
//         user.setCountry(userDTO.getCity());
//         user.setCreditLimit(userDTO.getCreditLimit());
//         user.setEmail(userDTO.getEmail());
//         user.setJob(userDTO.getJob());
//         user.setName(userDTO.getName());
//         user.setPassword(userDTO.getPassword());
//         user.setPhone(userDTO.getPhone());
//         user.setZip(userDTO.getZip());
//         user.setStreet(userDTO.getStreet());
//         System.out.println("mapper 2 " + user.getName());
//         return user;
        

//     }

//     // public UserDTO toDto(User findUserByEmail) {
//     //     return null;
//     // }
// }

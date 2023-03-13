package gov.iti.jets.persistent.dto;

import gov.iti.jets.persistent.dao.UserDaoImpl;
import gov.iti.jets.persistent.dao.interfaces.UserDao;
import gov.iti.jets.persistent.dto.interfaces.UserDTOServiceInt;
import gov.iti.jets.persistent.entity.User;
import gov.iti.jets.persistent.mappers.UserMapper;

public class UserDTOServiceImpl implements UserDTOServiceInt{
    private final UserMapper userMapper = new UserMapper();
    private final UserDao userDao = new UserDaoImpl();
    @Override
    public UserDTO create(UserDTO userDTO) {
        System.out.println("Name1 " + userDTO.getName());
        User user = userMapper.dtoToEntity(userDTO);
        System.out.println( "Name2" + user.getName());
        userDao.create(user);
        return userDTO;
    }

    @Override
    public UserDTO find(UserDTO userDTO) {
        // TODO Auto-generated method stub
        return null;
    }
    

    
}

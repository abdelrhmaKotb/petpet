package gov.iti.jets.services.mapper;

import gov.iti.jets.persistent.dto.InterestDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.Interest;

public class InterestMapper implements Mapper<Interest, InterestDto> {

    @Override
    public InterestDto toDto(Interest interest) {
        UserDTO userDTO = new UserDTO();
        InterestDto interestDto = new InterestDto(userDTO);

        return interestDto;
    }

    @Override
    public Interest toEntity(InterestDto interestDto) {
        return null;
    }
}

package gov.iti.jets.services.mapper;

import gov.iti.jets.persistent.dto.InterestDto;
import gov.iti.jets.persistent.dto.UserDTO;
import gov.iti.jets.persistent.entity.Interest;

public class InterestMapper implements Mapper<Interest, InterestDto> {

    @Override
    public InterestDto toDto(Interest interest) {
        InterestDto interestDto = new InterestDto(new UserMapper().toDto(interest.getUser()),new CategoryMapper().toDto(interest.getInterest()));

        return interestDto;
    }

    @Override
    public Interest toEntity(InterestDto interestDto) {
        return new Interest(new UserMapper().toEntity(interestDto.getUserDTO()),new CategoryMapper().toEntity(interestDto.getCategoryDto()));

    }
}

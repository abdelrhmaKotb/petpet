package gov.iti.jets.services;

import gov.iti.jets.persistent.dao.InterestDaoImpl;
import gov.iti.jets.persistent.dto.InterestDto;
import gov.iti.jets.persistent.entity.Interest;

import java.util.List;

public class InterestService {
    public void setUserInterests(List<Interest> userInterests){
        InterestDaoImpl interestDao= new InterestDaoImpl();
        for (Interest interest: userInterests){

            interestDao.setUserInterest(interest);
        }

    }
}

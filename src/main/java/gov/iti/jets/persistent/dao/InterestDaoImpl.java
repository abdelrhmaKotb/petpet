package gov.iti.jets.persistent.dao;

import gov.iti.jets.persistent.dao.interfaces.InterestDao;
import gov.iti.jets.persistent.entity.Interest;

public class InterestDaoImpl  extends RepositoryImpl<Interest,Integer> implements InterestDao {
    public InterestDaoImpl(){
        super(Interest.class);
    }
    @Override
    public boolean setUserInterest(Interest interest) {
        _entityManager.getTransaction().begin();
        _entityManager.merge(interest);
        System.out.println("intrests added");
        _entityManager.getTransaction().commit();
        return true;
    }
}

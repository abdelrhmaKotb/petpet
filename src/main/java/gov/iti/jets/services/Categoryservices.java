package gov.iti.jets.services;

import java.util.List;

import gov.iti.jets.persistent.dao.CategoryDaoImpl;
import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.services.mapper.CategoryMapper;

public class Categoryservices {


    public List<String> allcategoryname(){
        return  new CategoryDaoImpl().AllCategoryName();
    }

    public boolean isCategory(String cName){
        return new CategoryDaoImpl().isCategory(cName);
    }
    public int CategoryId(String cName){
        return new CategoryDaoImpl().getCategoryId(cName);
    }
    public boolean addCategory(String cName,String parent){
        if (!isCategory(cName)||parent.equals("Non")){
            int parentId;
            if(parent.equals("Non")){
                parentId=0;
            }
            else parentId=CategoryId(parent);

            
        new CategoryDaoImpl().AddCategory(cName,parentId);
        return true;
        }

        return false;
    }

}

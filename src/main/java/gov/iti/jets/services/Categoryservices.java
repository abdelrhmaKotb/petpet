package gov.iti.jets.services;

import java.util.List;

import gov.iti.jets.persistent.dao.CategoryDao;
import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.entity.Category;
import gov.iti.jets.services.mapper.CategoryMapper;

public class Categoryservices {


    public List<String> allcategoryname(){
    return  new CategoryDao().AllCategoryName();
    }
    public boolean isCategory(String cName){
        return new CategoryDao().isCategory(cName);
    }
    public int CategoryId(String cName){
        return new CategoryDao().getCategoryId(cName);
    }
    public boolean addCategory(String cName,String parent){
        if (!isCategory(cName)||parent.equals("Non")){
            int parentId;
            if(parent.equals("Non")){
                parentId=0;
            }
            else parentId=CategoryId(parent);

            
        new CategoryDao().AddCategory(cName,parentId);return true;
        }

        return false;
    }

}

package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.dto.CategoryAndItsSalies;
import gov.iti.jets.persistent.dto.getCategoryAnditsQuantityDTO;
import gov.iti.jets.persistent.entity.Category;

import java.util.List;

import org.hibernate.stat.internal.CategorizedStatistics;

public interface CategoryDao {
    public List<String> AllCategoryName();
    public int getCategoryId(String CategoryName);

    List<Category> getMainCategories();

    public void AddCategory(String cName, int parentId);
    public boolean isCategory(String CategoryName) ;
    public List<getCategoryAnditsQuantityDTO> getCategoryAndQuantity();
    public List<CategoryAndItsSalies> categoryAndItsSalies();

    }

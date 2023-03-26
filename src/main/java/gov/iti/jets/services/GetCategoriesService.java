package gov.iti.jets.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import gov.iti.jets.persistent.dao.CategoryDaoImpl;
import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.getCategoryAnditsQuantityDTO;
import gov.iti.jets.persistent.entity.Category;
import gov.iti.jets.services.mapper.CategoryMapper;
import jakarta.persistence.criteria.CriteriaBuilder;

public class GetCategoriesService {

    public List<CategoryDto> getCategories() {
        RepositoryImpl<Category, Integer> repo = new RepositoryImpl<>(Category.class);
        List<Category> list = repo.findAll();
        List<CategoryDto> categories = new ArrayList<>();

        CategoryMapper mapper = new CategoryMapper();

        list.forEach(e -> {
            categories.add(mapper.toDto(e));
        });

        return categories;
    }
    public List<getCategoryAnditsQuantityDTO> getCategoriesAndItsQuantity() {
        CategoryDaoImpl categoryDao =new CategoryDaoImpl();

        List<getCategoryAnditsQuantityDTO> categoryAndQuantity = categoryDao.getCategoryAndQuantity();


        return categoryAndQuantity;
    }
    public List<CategoryDto> getMainCategories(){
        CategoryDaoImpl categoryDao =new CategoryDaoImpl();

        List<Category> categoryList = categoryDao.getMainCategories();
        List<CategoryDto> categoryDtos = new ArrayList<>();
        CategoryMapper mapper = new CategoryMapper();
        categoryList.forEach(category -> {
            categoryDtos.add(mapper.toDto(category));
        });
        return categoryDtos;
    }
}

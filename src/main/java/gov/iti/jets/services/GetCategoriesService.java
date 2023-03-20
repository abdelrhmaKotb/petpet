package gov.iti.jets.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.entity.Category;
import gov.iti.jets.services.mapper.CategoryMapper;

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

}

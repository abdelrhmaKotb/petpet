package gov.iti.jets.services.mapper;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.entity.Category;

public class CategoryMapper implements Mapper<Category, CategoryDto> {

    @Override
    public CategoryDto toDto(Category t) {
        return new CategoryDto(t.getId(), t.getParentId(), t.getName());
    }

    @Override
    public Category toEntity(CategoryDto r) {
        Category category = new Category();
        category.setName(r.getName());
        category.setParentId(0);
        category.setId(r.getId());
        return category;
    }

}

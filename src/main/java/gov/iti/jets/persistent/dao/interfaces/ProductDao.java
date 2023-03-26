package gov.iti.jets.persistent.dao.interfaces;

import gov.iti.jets.persistent.dto.CategoryDto;
import gov.iti.jets.persistent.dto.TrendyProductsDTO;
import gov.iti.jets.persistent.entity.Product;

import java.util.List;

public interface ProductDao   {
    public List<Product> findAllProductsByPage( Integer pageNumber);
    public long totalOrders();
    public double highestPrise();
    public List<Product> filterProducts (double price, List<Integer> categoriesId);

    List<TrendyProductsDTO> firstThreeTrendyProducts(List<CategoryDto> mainCategories);
}

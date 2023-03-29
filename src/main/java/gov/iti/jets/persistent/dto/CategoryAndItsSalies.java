package gov.iti.jets.persistent.dto;

public class CategoryAndItsSalies {
    String categoryName;
    long categorySales;
    
    public CategoryAndItsSalies() {
    }

    public CategoryAndItsSalies(String categoryName, long categorySales) {
        this.categoryName = categoryName;
        this.categorySales = categorySales;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public long getCategorySales() {
        return categorySales;
    }

    public void setCategorySales(long categorySales) {
        this.categorySales = categorySales;
    }
    
}

package gov.iti.jets.persistent.dto;

public class InterestDto {
     int id;

     UserDTO userDTO;

     CategoryDto categoryDto;

    public InterestDto(int id, UserDTO userDTO , CategoryDto categoryDto) {
        this.id = id;
        this.userDTO = userDTO;
        this.categoryDto=categoryDto;
    }

    public InterestDto(UserDTO userDTO, CategoryDto categoryDto) {
        this.userDTO = userDTO;
        this.categoryDto = categoryDto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UserDTO getUserDTO() {
        return userDTO;
    }

    public void setUserDTO(UserDTO userDTO) {
        this.userDTO = userDTO;
    }

    public CategoryDto getCategoryDto() {
        return categoryDto;
    }

    public void setCategoryDto(CategoryDto categoryDto) {
        this.categoryDto = categoryDto;
    }
}

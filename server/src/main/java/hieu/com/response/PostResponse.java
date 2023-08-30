	package hieu.com.response;



import java.util.Date;

import hieu.com.dto.AttributeDTO;
import hieu.com.dto.ImageDTO;
import hieu.com.dto.UserDTO;
import hieu.com.models.Category;
import hieu.com.models.Overview;


public class PostResponse {
	private int id;
	private String title;
	private String star;
	private String address;
	private String description;
	private ImageDTO image;
	private AttributeDTO attributeDTO;
	private UserDTO userDTO;
	private Date createdDate;
	private Category category;
	private Overview overview;
	private String province;
	private String street;
	public PostResponse() {
		super();
	}

	public PostResponse(int id, String title, String star, String address, String description, ImageDTO image,
			AttributeDTO attributeDTO, UserDTO userDTO, Date createdDate, Category category, Overview overview) {
		super();
		this.id = id;
		this.title = title;
		this.star = star;
		this.address = address;
		this.description = description;
		this.image = image;
		this.attributeDTO = attributeDTO;
		this.userDTO = userDTO;
		this.createdDate = createdDate;
		this.category = category;
		this.overview = overview;
		
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public ImageDTO getImage() {
		return image;
	}
	public void setImage(ImageDTO image) {
		this.image = image;
	}
	public AttributeDTO getAttributeDTO() {
		return attributeDTO;
	}
	public void setAttributeDTO(AttributeDTO attributeDTO) {
		this.attributeDTO = attributeDTO;
	}
	public UserDTO getUserDTO() {
		return userDTO;
	}
	public void setUserDTO(UserDTO userDTO) {
		this.userDTO = userDTO;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Overview getOverview() {
		return overview;
	}

	public void setOverview(Overview overview) {
		this.overview = overview;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}
	
	
}

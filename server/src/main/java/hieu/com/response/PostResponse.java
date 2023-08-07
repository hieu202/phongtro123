	package hieu.com.response;



import java.util.Date;

import hieu.com.dto.AttributeDTO;
import hieu.com.dto.ImageDTO;
import hieu.com.dto.UserDTO;


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
	
	public PostResponse() {
		super();
	}
	public PostResponse(int id, String title, String star, String address, String description,
			ImageDTO image, AttributeDTO attributeDTO, UserDTO userDTO) {
		super();
		this.id = id;
		this.title = title;
		this.star = star;
		this.address = address;
		this.description = description;
		this.image = image;
		this.attributeDTO = attributeDTO;
		this.userDTO = userDTO;
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
	
	
}

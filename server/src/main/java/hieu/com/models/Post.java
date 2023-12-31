package hieu.com.models;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Lob;

import javax.persistence.Table;

@Entity
@Table(name = "post")
public class Post extends BaseEntity {
	@Column(name = "title", length = 120, nullable = true)
	private String title;
	@Column(name = "star", length = 120, nullable = true)
	private String star;
	@Column(name = "address", length = 120, nullable = true)
	private String address;
	@Lob
	@Column(name = "description", nullable = true, columnDefinition = "LONGTEXT")
	private String description;
	@Column(name = "label_code", length = 120, nullable = true)
	private String label_code;
	@Column(name = "province", length = 120, nullable = true)
	private String province;
	@Column(name = "street", length = 120, nullable = true)
	private String street;
	@Column(name = "attribute_id", nullable = true)
	private Integer attribute_id;
	@Column(name = "images_id", nullable = true)
	private Integer images_id;
	@Column(name = "category_code", nullable = true)
	private String category_code;
	@Column(name = "user_id", nullable = true)
	private Integer user_id;
	@Column(name = "overview_id", nullable = true)
	private Integer overview_id;
	@Column(name = "status", nullable = true)
	private Boolean status;
	public Post() {
		super();
	}
	public Post(String title, String star, String address, String description, Integer images_id) {
		super();
		this.title = title;
		this.star = star;
		this.address = address;
		this.description = description;
		this.images_id = images_id;
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
	public String getLabel_code() {
		return label_code;
	}
	public void setLabel_code(String label_code) {
		this.label_code = label_code;
	}
	public Integer getAttribute_id() {
		return attribute_id;
	}
	public void setAttribute_id(Integer attribute_id) {
		this.attribute_id = attribute_id;
	}
	public Integer getImages_id() {
		return images_id;
	}
	public void setImages_id(Integer images_id) {
		this.images_id = images_id;
	}
	public String getCategory_code() {
		return category_code;
	}
	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public Integer getOverview_id() {
		return overview_id;
	}
	public void setOverview_id(Integer overview_id) {
		this.overview_id = overview_id;
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

package hieu.com.request;


public class PostRequest {
	private String address;
	private double areaNumber;
	private String categoryCode;
	private String description;
	private String[] images;
	private double priceNumber;
	private String province;
	private String street;
	private String target;
	private String title;
	private String phone;
	private Integer postId;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getAreaNumber() {
		return areaNumber;
	}
	public void setAreaNumber(double areaNumber) {
		this.areaNumber = areaNumber;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String[] getImages() {
		return images;
	}
	public void setImages(String[] images) {
		this.images = images;
	}
	public double getPriceNumber() {
		return priceNumber;
	}
	public void setPriceNumber(double priceNumber) {
		this.priceNumber = priceNumber;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public Integer getPostId() {
		return postId;
	}
	public void setPostId(Integer postId) {
		this.postId = postId;
	}
	
	
}

package hieu.com.dto;

public class UserDTO {
	private String name;
	private String phone;
	private String zalo;
	private String avatar;
	public UserDTO() {
		super();
	}
	public UserDTO(String name, String phone, String zalo) {
		super();
		this.name = name;
		this.phone = phone;
		this.zalo = zalo;
	}
	
	public UserDTO(String name, String phone, String zalo, String avatar) {
		super();
		this.name = name;
		this.phone = phone;
		this.zalo = zalo;
		this.avatar = avatar;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getZalo() {
		return zalo;
	}
	public void setZalo(String zalo) {
		this.zalo = zalo;
	}
	
}

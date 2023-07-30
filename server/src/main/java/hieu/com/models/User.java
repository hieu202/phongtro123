package hieu.com.models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "user", uniqueConstraints = { @UniqueConstraint(columnNames = "phone"),
		@UniqueConstraint(columnNames = "zalo") })
public class User  {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	
	@Size(max = 45)
	private String name;

	@NotBlank
//	@Size(max = 120)
	private String password;

	@NotBlank
	@Size(max = 45)
	private String phone;

	
	@Size(max = 45)
	private String zalo;

	private String avatar;
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> role = new HashSet<>();

	public User() {
		super();
	}
	
	public User(String name, String phone, String password, String avatar) {
		this.name = name;
		this.phone = phone;
		this.password = password;
		this.avatar = avatar;
	}
	public User(String name, String phone, String password) {
		this.name = name;
		this.phone = phone;
		this.password = password;
		
	}
	public User(Integer id, @NotBlank @Size(max = 45) String name, @NotBlank @Size(max = 45) String password,
			@NotBlank @Size(max = 45) String phone, @NotBlank @Size(max = 45) String zalo, String avatar, Set<Role> role) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.zalo = zalo;
		this.avatar = avatar;
		this.role = role;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Set<Role> getRole() {
		return role;
	}

	public void setRole(Set<Role> role) {
		this.role = role;
	}

}

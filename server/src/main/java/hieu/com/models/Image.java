package hieu.com.models;


import javax.persistence.Column;
import javax.persistence.Entity;


import javax.persistence.Table;

@Entity
@Table(name = "images")
public class Image extends BaseEntity {
	@Column(name = "image", length = 1000, nullable = true)
	private String image;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}

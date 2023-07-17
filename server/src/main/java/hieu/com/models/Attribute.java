package hieu.com.models;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "attribute")
public class Attribute extends BaseEntity{
	@Column(name = "price", nullable = true)
	private Double price;
	@Column(name = "acreage", nullable = true)
	private Double acreage;
	@Column(name = "published", length = 120, nullable = true)
	private String published;
	@Column(name = "hashtag", length = 120, nullable = true)
	private String hashtag;
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getAcreage() {
		return acreage;
	}
	public void setAcreage(Double acreage) {
		this.acreage = acreage;
	}
	public String getPublished() {
		return published;
	}
	public void setPublished(String published) {
		this.published = published;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	
}

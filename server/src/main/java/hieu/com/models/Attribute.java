package hieu.com.models;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "attribute")
public class Attribute extends BaseEntity{
	@Column(name = "price", length = 120, nullable = true)
	private String price;
	@Column(name = "acreage", length = 120, nullable = true)
	private String acreage;
	@Column(name = "published", length = 120, nullable = true)
	private String published;
	@Column(name = "hashtag", length = 120, nullable = true)
	private String hashtag;
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getAcreage() {
		return acreage;
	}
	public void setAcreage(String acreage) {
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

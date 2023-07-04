package hieu.com.models;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category extends BaseEntity{
	@Column(name = "code", length = 120, nullable = true)
	private String code;
	@Column(name = "value", length = 120, nullable = true)
	private String value;
	@Lob
	@Column(name = "header", nullable = true, columnDefinition = "LONGTEXT")
	private String header;
	@Lob
	@Column(name = "subheader", nullable = true, columnDefinition = "LONGTEXT")
	private String subheader;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getSubheader() {
		return subheader;
	}
	public void setSubheader(String subheader) {
		this.subheader = subheader;
	}
	
	

}

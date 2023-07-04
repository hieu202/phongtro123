package hieu.com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "label")
public class Label extends BaseEntity{
	@Column(name = "code", length = 120, nullable = true)
	private String code;
	@Column(name = "value", length = 120, nullable = true)
	private String value;
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
	
}

package hieu.com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "overview")
public class Overview extends BaseEntity{
	@Column(name = "code", length = 120, nullable = true)
	private String code;
	@Column(name = "area", length = 120, nullable = true)
	private String area;
	@Column(name = "type", length = 120, nullable = true)
	private String type;
	@Column(name = "target", length = 120, nullable = true)
	private String target;
	@Column(name = "expire", length = 120, nullable = true)
	private String expire;
	@Column(name = "bonus", length = 120, nullable = true)
	private String bonus;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getExpire() {
		return expire;
	}
	public void setExpire(String expire) {
		this.expire = expire;
	}
	public String getBonus() {
		return bonus;
	}
	public void setBonus(String bonus) {
		this.bonus = bonus;
	}
	
}

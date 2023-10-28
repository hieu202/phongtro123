package hieu.com.common.constant;

public class QueryConstant {

	public QueryConstant() {
	}
	
	public static final String GET_LIST_POSTS = "SELECT * FROM POST p inner join attribute a"
			+ "on p.attribute_id = a.id"
			+ "where (:category_code is null or p.category_code = :category_code)"
			+ "and (:province is null or p.province = :province"
			+ "and (:price is null or a.price = :price"
			+ "and (:acreage is null or a.acreage = :acreage"
			+ "order by created_date DESC";
	
}

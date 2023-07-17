package hieu.com.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import hieu.com.models.Post;

@Repository

public interface PostRepository extends JpaRepository<Post, Integer> {

	@Query(value = "SELECT post.id AS post_id, attribute.id AS attribute_id FROM post JOIN attribute ON attribute.id = post.attribute_id WHERE attribute.price BETWEEN :minPrice AND :maxPrice", countQuery = "SELECT COUNT(*) FROM post JOIN attribute ON attribute.id = post.attribute_id WHERE attribute.price BETWEEN :minPrice AND :maxPrice", nativeQuery = true)
	Page<Object[]> findAllPostByPrice(@Param("minPrice") double minPrice, @Param("maxPrice") double maxPrice,
			Pageable pageable);

	@Query(value = "SELECT post.id AS post_id, attribute.id AS attribute_id FROM post JOIN attribute ON attribute.id = post.attribute_id WHERE attribute.acreage BETWEEN :minAcreage AND :maxAcreage", countQuery = "SELECT COUNT(*) FROM post JOIN attribute ON attribute.id = post.attribute_id WHERE attribute.acreage BETWEEN :minAcreage AND :maxAcreage", nativeQuery = true)
	Page<Object[]> findAllPostByArea(@Param("minAcreage") double minAcreage, @Param("maxAcreage") double maxAcreage,
			Pageable pageable);
}

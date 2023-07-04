package hieu.com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import hieu.com.models.Post;
@Repository

public interface PostRepository extends JpaRepository<Post, Integer> {
	@Query("SELECT p FROM Post p ORDER BY p.id")
    List<Post> findPagedProducts(int offset, int size);
}

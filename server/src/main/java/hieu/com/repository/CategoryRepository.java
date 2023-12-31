package hieu.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hieu.com.models.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{

	Category findByCode(String categoryCode);
	
}

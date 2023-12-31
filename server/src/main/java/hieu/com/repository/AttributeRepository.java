package hieu.com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hieu.com.models.Attribute;


@Repository
public interface AttributeRepository extends JpaRepository<Attribute, Integer>{
	List<Attribute> findByPriceBetween(double minPrice, double maxPrice);
}

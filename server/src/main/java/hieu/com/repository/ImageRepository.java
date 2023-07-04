package hieu.com.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;


import hieu.com.models.Image;
@Repository

public interface ImageRepository extends JpaRepository<Image, Integer> {
	
   
}

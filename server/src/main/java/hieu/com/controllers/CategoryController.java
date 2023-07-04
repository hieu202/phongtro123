package hieu.com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hieu.com.models.Category;
import hieu.com.repository.CategoryRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/v1")
public class CategoryController {
	@Autowired
	CategoryRepository categoryRepository;
	
	@GetMapping("/category/all")
	public List<Category> getCategory() {
		return categoryRepository.findAll();
	}
}

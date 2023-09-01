package hieu.com.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import hieu.com.models.Attribute;
import hieu.com.models.Category;
import hieu.com.models.Image;
import hieu.com.models.Overview;
import hieu.com.models.Post;
import hieu.com.models.User;
import hieu.com.repository.AttributeRepository;
import hieu.com.repository.CategoryRepository;
import hieu.com.repository.ImageRepository;
import hieu.com.repository.OverviewRepository;
import hieu.com.repository.PostRepository;
import hieu.com.repository.UserRepository;
import hieu.com.request.PostRequest;
import hieu.com.response.PostListResponse;
import hieu.com.response.PostResponse;
import hieu.com.service.PostService;
import org.json.simple.JSONArray;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/v1")
public class PostController {
	@Autowired
	PostService postService;
	@Autowired
	PostRepository postRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ImageRepository imageRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	AttributeRepository attributeRepository;
	@Autowired
	OverviewRepository overviewRepository;
	@GetMapping("/post/all")
	public List<PostResponse> getAllPost() {
		return postService.getAllPosts();
	}
	
	@GetMapping("/post")
	@PreAuthorize("hasRole('USER')")
	public List<PostResponse> getPostByPhone(@RequestParam String phone) {
		return postService.getAllPostsByPhone(phone);
	}
	@GetMapping("/post/limit")
	public PostListResponse getLimitPost(@RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "10") int size) {
		List<PostResponse> posts = postService.getLimitPosts(page, size);
		double countTotal = (double) postRepository.count(); // Lấy tổng số bài viết
		int count = (int) Math.ceil(countTotal / size);
		PostListResponse response = new PostListResponse();
		response.setPosts(posts);
		response.setCount(count);

		return response;

	}

//	@GetMapping("/post/limit/price")
//	public PostListResponse getLimitPostByPrice(@RequestParam(defaultValue = "0") int page,
//			@RequestParam(defaultValue = "10") int size,
//			@RequestParam double minPrice, @RequestParam double maxPrice) {
//		List<PostResponse> posts = postService.getLimitPostsByPrice(minPrice, maxPrice);
//	    double countTotal = (double)postRepository.count(); // Lấy tổng số bài viết
//	    int count = (int) Math.ceil(countTotal / size);
//	    PostListResponse response = new PostListResponse();
//	    response.setPosts(posts);
//	    response.setCount(count);
//
//	    return response;
//
//	}
	@GetMapping("post/limit/price")
	public PostListResponse getPostByPrice(@RequestParam double minPrice, @RequestParam double maxPrice,
			@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10") int size) {
		List<PostResponse> posts = postService.getPagePostsByPrice(minPrice, maxPrice, page, size);
		PageRequest pageable = PageRequest.of(page, size);
		Page<Object[]> postsPage = postRepository.findAllPostByPrice(minPrice, maxPrice, pageable);
		double totalCount = (double) postsPage.getTotalElements();
		int count = (int) Math.ceil(totalCount / size);
		PostListResponse response = new PostListResponse();
		response.setPosts(posts);
		response.setCount(count);

		return response;
	}

	@GetMapping("post/limit/acreage")
	public PostListResponse getPostByAcreage(@RequestParam double minAcreage, @RequestParam double maxAcreage,
			@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10") int size) {
		List<PostResponse> posts = postService.getPagePostsByAcreage(minAcreage, maxAcreage, page, size);
		PageRequest pageable = PageRequest.of(page, size);
		Page<Object[]> postsPage = postRepository.findAllPostByArea(minAcreage, maxAcreage, pageable);
		double totalCount = (double) postsPage.getTotalElements();
		int count = (int) Math.ceil(totalCount / size);
		PostListResponse response = new PostListResponse();
		response.setPosts(posts);
		response.setCount(count);

		return response;
	}

	@PostMapping("post/create")
	/* @PreAuthorize("hasRole('USER')") */
	public Post CreatePost(@RequestBody PostRequest newPost) {
		//Add Category
		Category category = categoryRepository.findByCode(newPost.getCategoryCode());
		//Add Image
		Image image = new Image();
		image.setImage("[" + '"' + String.join(('"' + "," + '"'), newPost.getImages()) + '"' + "]");
		imageRepository.save(image);
		//Add Attribute
		Attribute attribute = new Attribute();
		attribute.setAcreage(newPost.getAreaNumber());
		attribute.setPrice(newPost.getPriceNumber());
		attributeRepository.save(attribute);
		//Add user
		Optional<User> user = userRepository.findByPhone(newPost.getPhone());
		//Add Overview
		Overview overview = new Overview();
		overview.setTarget(newPost.getTarget());
		overviewRepository.save(overview);
		//Add Posts
		Post post = new Post();
		post.setAddress(newPost.getAddress());
		post.setCategory_code("" + category.getId());
		post.setImages_id(image.getId());
		post.setTitle(newPost.getTitle());
		post.setDescription("["+'"'+newPost.getDescription()+'"'+"]");
		post.setAttribute_id(attribute.getId());
		post.setUser_id(user.orElse(null).getId());
		post.setLabel_code(category.getId().toString());
		post.setOverview_id(overview.getId());
		post.setStatus(true);
		post.setProvince(newPost.getProvince());
		post.setStreet(newPost.getStreet());
		postRepository.save(post);
		return post;
	}
	
	//Xóa bài viết
	@DeleteMapping("/post/delete")
	@PreAuthorize("hasRole('USER')")
	public Post deletePostById(@RequestParam Integer id) {
		Optional<Post> post = postRepository.findById(id);
		postRepository.delete(post.orElse(null));
		return post.orElse(null);
	}
	
	// Sửa trạng thái
	@PutMapping("post/status/{id}/{status}") 
		public Boolean setStatus(@PathVariable Boolean status, @PathVariable int id) {
			Post post = postRepository.findById(id).orElse(null);
			post.setStatus(status);
			return status;
		}
	
	// Sửa bài viết
	@PutMapping("/post/update")
	public ResponseEntity<Post> updatePost (@RequestBody PostRequest postRequest) {
		Post post = postService.updatePostById(postRequest);
		return ResponseEntity.ok(post);
	}
	
}

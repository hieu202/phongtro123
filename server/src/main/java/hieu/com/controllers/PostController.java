package hieu.com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import hieu.com.models.Post;
import hieu.com.repository.PostRepository;
import hieu.com.response.PostListResponse;
import hieu.com.response.PostResponse;
import hieu.com.service.PostService;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/v1")
public class PostController {
	@Autowired
	PostService postService;
	@Autowired
	PostRepository postRepository;

	@GetMapping("/post/all")
	public List<PostResponse> getAllPost() {
		return postService.getAllPosts();
	}

	@GetMapping("/post/limit")
	public PostListResponse getLimitPost(@RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "10") int size) {
		List<PostResponse> posts = postService.getLimitPosts(page, size);
	    double countTotal = (double)postRepository.count(); // Lấy tổng số bài viết
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
	    List<PostResponse> posts= postService.getPagePostsByPrice(minPrice, maxPrice, page, size);
		PageRequest pageable = PageRequest.of(page, size);
	    Page<Object[]> postsPage = postRepository.findAllPostByPrice(minPrice, maxPrice, pageable);
        double totalCount = (double)postsPage.getTotalElements();
	    int count = (int) Math.ceil(totalCount / size);
	    PostListResponse response = new PostListResponse();
	    response.setPosts(posts);
	    response.setCount(count);

	    return response;
	}
	@GetMapping("post/limit/acreage")
	public PostListResponse getPostByAcreage(@RequestParam double minAcreage, @RequestParam double maxAcreage,
			@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10") int size) {
	    List<PostResponse> posts= postService.getPagePostsByAcreage(minAcreage, maxAcreage, page, size);
		PageRequest pageable = PageRequest.of(page, size);
	    Page<Object[]> postsPage = postRepository.findAllPostByArea(minAcreage, maxAcreage, pageable);
        double totalCount = (double)postsPage.getTotalElements();
	    int count = (int) Math.ceil(totalCount / size);
	    PostListResponse response = new PostListResponse();
	    response.setPosts(posts);
	    response.setCount(count);

	    return response;
	}
}

package hieu.com.service;

import java.util.List;

import org.springframework.http.ResponseEntity;

import hieu.com.models.Post;
import hieu.com.request.PostRequest;
import hieu.com.response.PostResponse;

public interface PostService {
	List<PostResponse> getAllPosts();
	List<PostResponse> getLimitPosts(int page, int size);
	List<PostResponse> getLimitPostsByPrice(double minPrice, double maxPrice);
	List<PostResponse> getPagePostsByPrice(double minPrice, double maxPrice, int page, int size);
	List<PostResponse> getPagePostsByAcreage(double minAcreage, double maxAcreage, int page, int size);
	List<PostResponse> getAllPostsByPhone(String phone);
	Post updatePostById(PostRequest postRequest);
}

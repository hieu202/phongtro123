package hieu.com.service;

import java.util.List;


import hieu.com.response.PostResponse;

public interface PostService {
	List<PostResponse> getAllPosts();
	List<PostResponse> getLimitPosts(int page, int size);
}

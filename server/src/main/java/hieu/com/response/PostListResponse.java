package hieu.com.response;

import java.util.List;

public class PostListResponse {
	private List<PostResponse> posts;
	private int count;
	
	public PostListResponse() {
		super();
	}

	public PostListResponse(List<PostResponse> posts, int count) {
		super();
		this.posts = posts;
		this.count = count;
	}

	public List<PostResponse> getPosts() {
		return posts;
	}

	public void setPosts(List<PostResponse> posts) {
		this.posts = posts;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
}

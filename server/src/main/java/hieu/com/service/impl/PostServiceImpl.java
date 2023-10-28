package hieu.com.service.impl;

import java.util.ArrayList;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import hieu.com.dto.AttributeDTO;
import hieu.com.dto.ImageDTO;
import hieu.com.dto.UserDTO;
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
import hieu.com.response.PostResponse;
import hieu.com.service.PostService;

@Service
public class PostServiceImpl implements PostService {
	@Autowired
	PostRepository postRepository;
	@Autowired
	ImageRepository imageRepository;
	@Autowired
	AttributeRepository attributeRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	OverviewRepository overviewRepository;

	@Override
	public List<PostResponse> getAllPosts() {
		// TODO Auto-generated method stub
		List<Post> posts = postRepository.findAll();
		List<PostResponse> postResponses = new ArrayList<>();
		for (Post post : posts) {
			PostResponse postResponse = new PostResponse();
			postResponse.setId(post.getId());
			postResponse.setAddress(post.getAddress());
			postResponse.setTitle(post.getTitle());
			postResponse.setDescription(post.getDescription());
			postResponse.setStar(post.getStar());

			ImageDTO imageDTO = new ImageDTO();
			AttributeDTO attributeDTO = new AttributeDTO();
			UserDTO userDTO = new UserDTO();
			if (post.getImages_id() != null) {
				// lấy image
				Image image = imageRepository.findById(post.getImages_id()).orElse(null);
				if (image != null) {
					imageDTO.setImage(image.getImage());
				}
				// lấy attribute
				Attribute attribute = attributeRepository.findById(post.getAttribute_id()).orElse(null);
				if (attribute != null) {
					attributeDTO.setPrice(attribute.getPrice());
					attributeDTO.setAcreage(attribute.getAcreage());
					attributeDTO.setHashtag(attribute.getHashtag());
					attributeDTO.setPublished(attribute.getPublished());
				}
				// lấy user
				User user = userRepository.findById(post.getUser_id()).orElse(null);
				if (user != null) {
					userDTO.setName(user.getName());
					userDTO.setPhone(user.getPhone());
					userDTO.setZalo(user.getZalo());
				}
			}

			postResponse.setImage(imageDTO);
			postResponse.setAttributeDTO(attributeDTO);
			postResponse.setUserDTO(userDTO);
			postResponses.add(postResponse);

		}
		return postResponses;
	}

	@Override
	public List<PostResponse> getAllPostsByPhone(String phone) {
		// TODO Auto-generated method stub
		List<Post> posts = postRepository.findAll();
		List<PostResponse> postResponses = new ArrayList<>();
		for (Post post : posts) {
			PostResponse postResponse = new PostResponse();
			postResponse.setId(post.getId());
			postResponse.setAddress(post.getAddress());
			postResponse.setTitle(post.getTitle());
			postResponse.setDescription(post.getDescription());
			postResponse.setStar(post.getStar());
			postResponse.setCreatedDate(post.getCreatedDate());
			postResponse.setProvince(post.getProvince());
			postResponse.setStreet(post.getStreet());
			ImageDTO imageDTO = new ImageDTO();
			AttributeDTO attributeDTO = new AttributeDTO();
			UserDTO userDTO = new UserDTO();
			if (post.getImages_id() != null) {
				// lấy image
				Image image = imageRepository.findById(post.getImages_id()).orElse(null);
				if (image != null) {
					imageDTO.setImage(image.getImage());
				}
			}
			// lấy attribute
			Attribute attribute = attributeRepository.findById(post.getAttribute_id()).orElse(null);
			if (attribute != null) {
				attributeDTO.setPrice(attribute.getPrice());
				attributeDTO.setAcreage(attribute.getAcreage());
				attributeDTO.setHashtag(attribute.getHashtag());
				attributeDTO.setPublished(attribute.getPublished());
			}
			// lấy user
			User user = userRepository.findById(post.getUser_id()).orElse(null);
			if (user != null) {
				userDTO.setName(user.getName());
				userDTO.setPhone(user.getPhone());
				userDTO.setZalo(user.getZalo());
			}
			// lấy category
			if (post.getCategory_code() != null) {
				Category category = categoryRepository.findById(Integer.parseInt(post.getCategory_code())).orElse(null);
				postResponse.setCategory(category);
			}
			// lấy overview
			if (post.getOverview_id() != null) {
				Overview overview = overviewRepository.findById(post.getOverview_id()).orElse(null);
				postResponse.setOverview(overview);
			}
			postResponse.setImage(imageDTO);
			postResponse.setAttributeDTO(attributeDTO);
			postResponse.setUserDTO(userDTO);

			if (userDTO.getPhone().compareTo(phone) == 0) {
				postResponses.add(postResponse);
			}

		}
		return postResponses;
	}

	@Override
	public List<PostResponse> getLimitPosts(int page, int size) {
		// TODO Auto-generated method stub
		Sort sort = Sort.by(Sort.Direction.DESC, "createdDate");
		PageRequest pr = PageRequest.of(page, size, sort);
		Page<Post> postPage = postRepository.findAll(pr);
		List<Post> posts = postPage.getContent();
		List<PostResponse> postResponses = new ArrayList<>();
		for (Post post : posts) {
			PostResponse postResponse = new PostResponse();
			postResponse.setId(post.getId());
			postResponse.setAddress(post.getAddress());
			postResponse.setTitle(post.getTitle());
			postResponse.setDescription(post.getDescription());
			postResponse.setStar(post.getStar());

			ImageDTO imageDTO = new ImageDTO();
			AttributeDTO attributeDTO = new AttributeDTO();
			UserDTO userDTO = new UserDTO();
			if (post.getImages_id() != null) {
				// lấy image
				Image image = imageRepository.findById(post.getImages_id()).orElse(null);
				if (image != null) {
					imageDTO.setImage(image.getImage());
				}
				// lấy attribute
				Attribute attribute = attributeRepository.findById(post.getAttribute_id()).orElse(null);
				if (attribute != null) {
					attributeDTO.setPrice(attribute.getPrice());
					attributeDTO.setAcreage(attribute.getAcreage());
					attributeDTO.setHashtag(attribute.getHashtag());
					attributeDTO.setPublished(attribute.getPublished());
				}
				// lấy user
				User user = userRepository.findById(post.getUser_id()).orElse(null);
				if (user != null) {
					userDTO.setName(user.getName());
					userDTO.setPhone(user.getPhone());
					userDTO.setZalo(user.getZalo());
				}
			}

			postResponse.setImage(imageDTO);
			postResponse.setAttributeDTO(attributeDTO);
			postResponse.setUserDTO(userDTO);
			postResponses.add(postResponse);

		}
		return postResponses;
	}

	@Override
	public List<PostResponse> getLimitPostsByPrice(double minPrice, double maxPrice) {
//		PageRequest pr = PageRequest.of(page, size);
//	    Page<Post> postPage = postRepository.findAll(pr);
//	    List<Post> posts = postPage.getContent();
		Sort sort = Sort.by(Sort.Direction.DESC, "createdDate");
		List<Post> posts = postRepository.findAll(sort);
		List<PostResponse> postResponses = new ArrayList<>();
		for (Post post : posts) {
			PostResponse postResponse = new PostResponse();
			postResponse.setId(post.getId());
			postResponse.setAddress(post.getAddress());
			postResponse.setTitle(post.getTitle());
			postResponse.setDescription(post.getDescription());
			postResponse.setStar(post.getStar());

			ImageDTO imageDTO = new ImageDTO();
			AttributeDTO attributeDTO = new AttributeDTO();
			UserDTO userDTO = new UserDTO();
			if (post.getImages_id() != null) {
				// lấy image
				Image image = imageRepository.findById(post.getImages_id()).orElse(null);
				if (image != null) {
					imageDTO.setImage(image.getImage());
				}
				// lấy attribute
				Attribute attribute = attributeRepository.findById(post.getAttribute_id()).orElse(null);
				if (attribute != null) {
					attributeDTO.setPrice(attribute.getPrice());
					attributeDTO.setAcreage(attribute.getAcreage());
					attributeDTO.setHashtag(attribute.getHashtag());
					attributeDTO.setPublished(attribute.getPublished());
				}
				// lấy user
				User user = userRepository.findById(post.getUser_id()).orElse(null);
				if (user != null) {
					userDTO.setName(user.getName());
					userDTO.setPhone(user.getPhone());
					userDTO.setZalo(user.getZalo());
				}
			}

			postResponse.setImage(imageDTO);
			postResponse.setAttributeDTO(attributeDTO);
			postResponse.setUserDTO(userDTO);
			if (attributeDTO.getPrice() >= minPrice && attributeDTO.getPrice() <= maxPrice) {
				postResponses.add(postResponse);
			}

		}
		return postResponses;
	}

	@Override
	public List<PostResponse> getPagePostsByPrice(double minPrice, double maxPrice, int page, int size) {
		// TODO Auto-generated method stub
		PageRequest pr = PageRequest.of(page, size);
		Page<Object[]> postPage = postRepository.findAllPostByPrice(minPrice, maxPrice, pr);
		List<Object[]> postPage1 = postPage.getContent();
		List<Post> posts = new ArrayList<>();
		for (Object[] a : postPage1) {
			Post post = postRepository.getById((Integer) a[0]);
			posts.add(post);
		}
		List<PostResponse> postResponses = new ArrayList<>();
		for (Post post : posts) {
			PostResponse postResponse = new PostResponse();
			postResponse.setId(post.getId());
			postResponse.setAddress(post.getAddress());
			postResponse.setTitle(post.getTitle());
			postResponse.setDescription(post.getDescription());
			postResponse.setStar(post.getStar());
			postResponse.setStreet(post.getStreet());
			ImageDTO imageDTO = new ImageDTO();
			AttributeDTO attributeDTO = new AttributeDTO();
			UserDTO userDTO = new UserDTO();
			if (post.getImages_id() != null) {
				// lấy image
				Image image = imageRepository.findById(post.getImages_id()).orElse(null);
				if (image != null) {
					imageDTO.setImage(image.getImage());
				}
				// lấy attribute
				Attribute attribute = attributeRepository.findById(post.getAttribute_id()).orElse(null);
				if (attribute != null) {
					attributeDTO.setPrice(attribute.getPrice());
					attributeDTO.setAcreage(attribute.getAcreage());
					attributeDTO.setHashtag(attribute.getHashtag());
					attributeDTO.setPublished(attribute.getPublished());
				}
				// lấy user
				User user = userRepository.findById(post.getUser_id()).orElse(null);
				if (user != null) {
					userDTO.setName(user.getName());
					userDTO.setPhone(user.getPhone());
					userDTO.setZalo(user.getZalo());
				}
			}

			postResponse.setImage(imageDTO);
			postResponse.setAttributeDTO(attributeDTO);
			postResponse.setUserDTO(userDTO);
			postResponses.add(postResponse);

		}
		return postResponses;
	}

	@Override
	public List<PostResponse> getPagePostsByAcreage(double minAcreage, double maxAcreage, int page, int size) {
		// TODO Auto-generated method stub
		PageRequest pr = PageRequest.of(page, size);
		Page<Object[]> postPage = postRepository.findAllPostByArea(minAcreage, maxAcreage, pr);
		List<Object[]> postPage1 = postPage.getContent();
		List<Post> posts = new ArrayList<>();
		for (Object[] a : postPage1) {
			Post post = postRepository.getById((Integer) a[0]);
			posts.add(post);
		}
		List<PostResponse> postResponses = new ArrayList<>();
		for (Post post : posts) {
			PostResponse postResponse = new PostResponse();
			postResponse.setId(post.getId());
			postResponse.setAddress(post.getAddress());
			postResponse.setTitle(post.getTitle());
			postResponse.setDescription(post.getDescription());
			postResponse.setStar(post.getStar());

			ImageDTO imageDTO = new ImageDTO();
			AttributeDTO attributeDTO = new AttributeDTO();
			UserDTO userDTO = new UserDTO();
			if (post.getImages_id() != null) {
				// lấy image
				Image image = imageRepository.findById(post.getImages_id()).orElse(null);
				if (image != null) {
					imageDTO.setImage(image.getImage());
				}
				// lấy attribute
				Attribute attribute = attributeRepository.findById(post.getAttribute_id()).orElse(null);
				if (attribute != null) {
					attributeDTO.setPrice(attribute.getPrice());
					attributeDTO.setAcreage(attribute.getAcreage());
					attributeDTO.setHashtag(attribute.getHashtag());
					attributeDTO.setPublished(attribute.getPublished());
				}
				// lấy user
				User user = userRepository.findById(post.getUser_id()).orElse(null);
				if (user != null) {
					userDTO.setName(user.getName());
					userDTO.setPhone(user.getPhone());
					userDTO.setZalo(user.getZalo());
				}
			}

			postResponse.setImage(imageDTO);
			postResponse.setAttributeDTO(attributeDTO);
			postResponse.setUserDTO(userDTO);
			postResponses.add(postResponse);

		}
		return postResponses;
	}

	@Override
	public Post updatePostById(PostRequest postRequest) {
		// TODO Auto-generated method stub
		Post post = postRepository.findById(postRequest.getPostId()).orElse(null);
		// Update Category
		Category category = categoryRepository.findByCode(postRequest.getCategoryCode());
		// Add Image
		Image image = imageRepository.findById(post.getImages_id()).orElse(null);
		image.setImage("[" + '"' + String.join(('"' + "," + '"'), postRequest.getImages()) + '"' + "]");
		imageRepository.save(image);
		// Update Attribute
		Attribute attribute = attributeRepository.findById(post.getAttribute_id()).orElse(null);
		attribute.setAcreage(postRequest.getAreaNumber());
		attribute.setPrice(postRequest.getPriceNumber());
		attributeRepository.save(attribute);
		// Update user
		Optional<User> user = userRepository.findByPhone(postRequest.getPhone());
		// Update Overview
		Overview overview = overviewRepository.findById(post.getOverview_id()).orElse(null);
		overview.setTarget(postRequest.getTarget());
		overviewRepository.save(overview);
		// Update Posts
		
		post.setAddress(postRequest.getAddress());
		post.setCategory_code("" + category.getId());
		post.setImages_id(image.getId());
		post.setTitle(postRequest.getTitle());
		post.setDescription("[" + '"' + postRequest.getDescription() + '"' + "]");
		post.setAttribute_id(attribute.getId());
		post.setUser_id(user.orElse(null).getId());
		post.setLabel_code(category.getId().toString());
		post.setOverview_id(overview.getId());
		post.setStatus(true);
		post.setProvince(postRequest.getProvince());
		post.setStreet(postRequest.getStreet());
		postRepository.save(post);
		return post;
	}

}

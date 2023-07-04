package hieu.com.service.impl;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import hieu.com.dto.AttributeDTO;
import hieu.com.dto.ImageDTO;
import hieu.com.dto.UserDTO;
import hieu.com.models.Attribute;
import hieu.com.models.Image;
import hieu.com.models.Post;
import hieu.com.models.User;
import hieu.com.repository.AttributeRepository;
import hieu.com.repository.ImageRepository;
import hieu.com.repository.PostRepository;
import hieu.com.repository.UserRepository;
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
	public List<PostResponse> getLimitPosts(int page, int size) {
		// TODO Auto-generated method stub
		PageRequest pr = PageRequest.of(page, size);
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

}
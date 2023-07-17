package hieu.com.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import hieu.com.models.User;
import hieu.com.repository.UserRepository;
import hieu.com.security.jwt.JwtUtils;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/user")
public class UserController {
	@Autowired
	UserRepository userRepository;
	@Autowired
	JwtUtils jwtUtils;
	@GetMapping("/get_info")
	@PreAuthorize("hasRole('USER')or hasRole('ADMIN')")
	public Optional<User> getInfo (@RequestParam String phone) {
		return  userRepository.findByPhone(phone);
	}
	@GetMapping("/get_info1")
	public Optional<User> getInfo1 () {
		return  userRepository.findByPhone("12");
	}
}

package hieu.com.controllers;



import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import hieu.com.models.ERole;
import hieu.com.models.Role;
import hieu.com.models.User;
import hieu.com.repository.RoleRepository;
import hieu.com.repository.UserRepository;
import hieu.com.request.LoginRequest;
import hieu.com.request.SignupRequest;
import hieu.com.response.JwtResponse;
import hieu.com.response.MessageResponse;
import hieu.com.security.jwt.JwtUtils;
import hieu.com.security.services.UserDetailsImpl;



@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/auth")
public class AuthController {
  @Autowired
  AuthenticationManager authenticationManager;

  @Autowired
  UserRepository userRepository;

  @Autowired
  RoleRepository roleRepository;

  @Autowired
  PasswordEncoder encoder;

  @Autowired
  JwtUtils jwtUtils;

  
  @GetMapping("/test")
  public String test() {
	  return "test";
  }
  @PostMapping("/signin")
  public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {

    try {
    	Authentication authentication = authenticationManager.authenticate(
    	        new UsernamePasswordAuthenticationToken(loginRequest.getPhone(), loginRequest.getPassword()));
    	    
    	    SecurityContextHolder.getContext().setAuthentication(authentication);
    	    String jwt = jwtUtils.generateJwtToken(authentication);
    	    
    	    UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();    
    	    List<String> roles = userDetails.getAuthorities().stream()
    	        .map(item -> item.getAuthority())
    	        .collect(Collectors.toList());

    	    return ResponseEntity.ok(new JwtResponse(jwt, 
    	                         userDetails.getId(), 
    	                         userDetails.getUsername(), 
    	                         userDetails.getPhone(), 
    	                         roles));
    } catch(BadCredentialsException  e) {
    	return ResponseEntity
    	          .badRequest()
    	          .body(new MessageResponse("Error: Tài khoản hoặc mật khẩu không đúng!"));
    }
  }
  
  @PostMapping("/signup")
  public ResponseEntity<?> registerUser(@Valid @RequestBody SignupRequest signUpRequest) {
    

    if (userRepository.existsByPhone(signUpRequest.getPhone())) {
      return ResponseEntity
          .badRequest()
          .body(new MessageResponse("Error: Phone is already in use!"));
    }
//    System.out.println(signUpRequest.getUsername()+" "+ signUpRequest.getPassword() +" "+ signUpRequest.getPhone());
    // Create new user's account
    User user = new User(signUpRequest.getUsername(), 
               signUpRequest.getPhone(),
               encoder.encode(signUpRequest.getPassword()));
   
    Set<String> strRoles = signUpRequest.getRole();
    Set<Role> roles = new HashSet<>();

    if (strRoles == null) {
      Role userRole = roleRepository.findByName(ERole.ROLE_USER)
          .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
      roles.add(userRole);
    } else {
      strRoles.forEach(role -> {
        switch (role) {
        case "admin":
          Role adminRole = roleRepository.findByName(ERole.ROLE_ADMIN)
              .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
          roles.add(adminRole);

          break;
        
        default:
          Role userRole = roleRepository.findByName(ERole.ROLE_USER)
              .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
          roles.add(userRole);
        }
      });
    }

    user.setRole(roles);
    userRepository.save(user);

    return ResponseEntity.ok(new MessageResponse("User registered successfully!"));
  }
}

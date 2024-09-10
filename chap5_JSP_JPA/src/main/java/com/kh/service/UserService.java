package com.kh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.stereotype.Service;

import com.kh.entity.JSPUser;
import com.kh.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	
	//유저목록 가져오는 메서드
	public List<JSPUser> getAllUsers(){
		return userRepository.findAll();
	}
	
	//유저 추가하는 메서드
	public void addUser(JSPUser user) {
		userRepository.save(user);
	}
	
}

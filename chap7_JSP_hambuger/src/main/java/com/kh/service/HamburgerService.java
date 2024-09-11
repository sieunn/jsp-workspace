package com.kh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.entity.Hamburger;
import com.kh.repository.HamburgerRepository;

@Service
public class HamburgerService {

	@Autowired
	private HamburgerRepository hamburgerRepository;
	
	//목록 가져오기
	public List<Hamburger> getAllBurgers(){
		return hamburgerRepository.findAll();
	}
	
	//목록 추가하기
	public void addBurger(Hamburger burger) {
		hamburgerRepository.save(burger);
	}
}

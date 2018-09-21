package com.niit.backend.dao;

import java.util.List;

import com.niit.backend.dto.Product;
import com.niit.backend.dto.User;


public interface UserDao {
	
	boolean registerUser(User product);
	User getUserById(String id);
	
}

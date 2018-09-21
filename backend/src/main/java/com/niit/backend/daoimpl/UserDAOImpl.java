package com.niit.backend.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.dao.UserDao;
import com.niit.backend.dto.User;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDao {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public boolean registerUser(User user) {
		try{
		 getSession().save(user);
		return true;
		}
		catch(Exception e){
			return false;
		}
	}

	@Override
	public User getUserById(String id) {
		System.out.println("In  User DAO impl : "+id);
		User user=(User)getSession().get(User.class, id);
		return user;
	}

}

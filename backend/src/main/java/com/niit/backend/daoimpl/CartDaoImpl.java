package com.niit.backend.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.dao.CartDao;
import com.niit.backend.dto.Cart;


@Repository("cartDao")
@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean addCart(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		try{
			session.save(cart);
			return true;
		}
		catch(Exception exception)
		{
			System.out.println(exception);
			return false;
		}
	}

	@Override
	public Cart getCartByCustomer(String customerId) {
		Session session = sessionFactory.getCurrentSession();
		try{
			System.out.println("i m here");
			Query query = session.createQuery("From Cart  where customerId = :CI");
			query.setParameter("CI", customerId);
			List<Cart> cartList = query.list();
			System.out.println("i m here");
			return cartList.get(0);
		}
		catch(Exception e){
			System.out.println(e);
			return null;
		}
	}

	@Override
	public boolean deleteCart(int cartId) {
		Session session=sessionFactory.getCurrentSession();
		Cart cObj=(Cart)session.get(Cart.class, cartId);
		try{
		session.delete(cObj);
		return true;
		}
		catch(Exception e){
		e.printStackTrace();
		return false;
		}
	}
	}


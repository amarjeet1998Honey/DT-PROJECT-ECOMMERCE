package com.niit.backend;

import static org.junit.Assert.*;

import java.util.List;


import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.dao.*;
import com.niit.backend.dto.Category;
import com.niit.backend.dto.Product;
import com.niit.backend.dto.Supplier;

public class ProductTestCase {

	static CategoryDao categoryObj;
	static ProductDao proObj;
	
	@BeforeClass
	public static void init(){
		
		AnnotationConfigApplicationContext app=new AnnotationConfigApplicationContext();
		app.scan("com.niit.backend");
		app.refresh();
		categoryObj=app.getBean("categoryDao",CategoryDao.class);
		proObj=app.getBean("productDao",ProductDao.class);
	}
	
	@Test
	@Ignore
	public void addProduct(){
		System.out.println("ADD PRODUCT---------------------");
		
		Product pro=new Product();
		pro.setProductName("SurfExcel");
		pro.setDescription("Dag ache hai");
		pro.setPrice(150);
		pro.setQuantity(10000);
		

		Product pro1=new Product();
		pro1.setProductName("Nirma");
		pro1.setDescription("Doodh si saffedi Nirma se ayye rangin kapda bhi khil khil jaye");
		pro1.setPrice(125);
		pro1.setQuantity(10000);
		

		Product pro2=new Product();
		pro2.setProductName("Colgate");
		pro2.setDescription("toothpaste");
		pro2.setPrice(78);
		pro2.setQuantity(10000);
		
		Category cat=new Category();
		cat.setCategoryName("Washing Powder");
		cat.setCategoryDesc("Sabun");
		
		Supplier s=new Supplier();
		s.setSupplierName("Laxmi Traders");
		s.setSupplierAddress("Vishwas Nagar , Shahdara");
		
		s.getProducts().add(pro);
		s.getProducts().add(pro1);
		s.getProducts().add(pro2);
		
		cat.getProducts().add(pro);
		cat.getProducts().add(pro1);
		cat.getProducts().add(pro2);
		
		
		pro.setCategory(cat);
		pro1.setCategory(cat);
		pro2.setCategory(cat);
		
		pro.setSupplier(s);
		pro1.setSupplier(s);
		pro2.setSupplier(s);
		
		
		
		assertTrue("Category Added Succesfully",categoryObj.insertCategory(cat));
		
		
	}
	
	@Test
	@Ignore
	public void updateProductbyId(){
		 
		Product pro3=proObj. getProductById(1);
		
		pro3.setProductName("television");
		pro3.setDescription("Electronics");
		pro3.setPrice(15000);
		pro3.setQuantity(1500);
		
		Category cat=new Category();
		cat.setCategoryName("Electronics");
		cat.setCategoryDesc("HomeAppliances");
		
		Supplier supp=new Supplier();
		supp.setSupplierName("mohanji Electronics");
		supp.setSupplierAddress("jagatpuri");
		
		supp.getProducts().add(pro3);
		
		cat.getProducts().add(pro3);
		
		pro3.setCategory(cat);
		pro3.setSupplier(supp);
		
		assertTrue("Product Updated Succesfully",proObj.updateProduct(pro3));
		
		}
	
		/*@Test
		@Ignore
		public void deleteProductById(){
			
			Product product=proObj.getProduct(3);
			 
			assertEquals("Product Deleted Sucessfully", proObj.deleteProduct(productId););
			
			
		}
	*/
		/*@Test
		public void getProductsById(){
			
		
		 List<Product> pro=proObj.getProducts();
				assertTrue(product, proObj.getProducts());
					
				}*/
			

	
	
		
	}
	


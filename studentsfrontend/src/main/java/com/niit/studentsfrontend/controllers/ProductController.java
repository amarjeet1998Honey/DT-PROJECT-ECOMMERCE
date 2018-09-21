package com.niit.studentsfrontend.controllers;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.dao.CategoryDao;
import com.niit.backend.dao.ProductDao;
import com.niit.backend.dao.SupplierDao;
import com.niit.backend.dto.Category;
import com.niit.backend.dto.Product;
import com.niit.backend.dto.Supplier;

@Controller
public class ProductController {

	@Autowired
	CategoryDao categoryDaoObj;
	
	@Autowired
	SupplierDao supplierDaoObj;
	
	@Autowired
	ProductDao productDaoObj;
	
	@RequestMapping(value="/admin/adminpage",method=RequestMethod.GET)
	public String getAdminHomePage(){
		return "admin";
	}
	
	@RequestMapping(value="/admin/addProductForm",method=RequestMethod.GET)
	public String getAddProductForm(ModelMap map){
		
		List<Category> categories=categoryDaoObj.listCategories();
		List<Supplier> suppliers=supplierDaoObj.listSuppliers();
		
		map.addAttribute("categoryList",categories);
		map.addAttribute("supplierList",suppliers);
		
		return "AddProductForm";
	}
	
	@RequestMapping(value="/admin/getProductPage",method=RequestMethod.GET)
	public String getProductOptions(){
		return "ProductPage";
	}
	
	@RequestMapping(value="/admin/addProduct",method=RequestMethod.POST)
	public String addProduct(HttpServletRequest request,
			ModelMap map,@RequestParam("file")MultipartFile file){
		System.out.println("i am add product");
		Product p=new Product();
		p.setProductName(request.getParameter("productName"));
		p.setPrice(Float.parseFloat(request.getParameter("price")));
		p.setDescription(request.getParameter("description"));
		p.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		
		Category catObj=
		categoryDaoObj.getCategoryById(Integer.parseInt(request.getParameter("category")));
		
		p.setCategory(catObj);
		p.setStatus("Active");
		
		p.setSupplier(supplierDaoObj.getSupplierById
				(Integer.parseInt(request.getParameter("supplier"))));
		
		String filePathString=request.getSession().getServletContext().getRealPath("/");
		String fileName=file.getOriginalFilename();
		
		System.out.println("File Name : "+fileName);
		
		p.setImgname(fileName);

		
		boolean r=productDaoObj.insertProduct(p);
		
		try{
			
			byte[] imageBytes=file.getBytes();
		
			BufferedOutputStream bos=new BufferedOutputStream(
					new FileOutputStream(filePathString+"/resources/images/"+fileName));
			bos.write(imageBytes);
			bos.close();
			
			System.out.println(filePathString);
			
		}
		
		catch(Exception e){
			e.printStackTrace();
		}

		
		if(true){
			map.addAttribute("msg", "Product Added Succesfully");
			return "ProductPage";
		}
		else {
			map.addAttribute("msg", "Problem in Adding Product . Try Again ");
			return "AddProductForm";
		}

	}

	
	@RequestMapping(value="/admin/viewAllProducts",method=RequestMethod.GET)
	public ModelAndView getAllProducts(){
		
		ModelAndView mv=new ModelAndView("ViewAllProductsPage");
		List<Product> products=productDaoObj.getProducts();
		mv.addObject("productList",products);
		return mv;
	}
	
	@RequestMapping(value="deleteProduct/{proId}",method=RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable("proId")int pId){
		
		System.out.println("PRoduct Id : "+pId);
		ModelAndView mv=new ModelAndView("ViewAllProductsPage");
		
		
		productDaoObj.deleteProduct(pId);
		
		List<Product> products=productDaoObj.getProducts();
		mv.addObject("productList",products);
		
		mv.addObject("msg","Product Deleted Succesfully");
		return mv;
		
	}
	
	
}

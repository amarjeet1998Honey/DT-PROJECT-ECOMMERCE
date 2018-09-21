package com.niit.studentsfrontend.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.backend.dao.CategoryDao;
import com.niit.backend.dto.Category;

@Controller

public class CategoryController {
	
	/*@Autowired
	Category catObj;*/

	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="/admin/category",method=RequestMethod.GET)
	public String getProductPage(){
		return "CategoryPage";
	}


	@RequestMapping(value="/admin/addCategoryForm",method=RequestMethod.GET)
	public String AddCategory(ModelMap map){
		map.addAttribute("categoryObj",new Category());
		return"AddCategory";
			
	}
	
	@RequestMapping(value="/admin/addcategory",method=RequestMethod.POST)
	public String addCategoryMethod(@ModelAttribute("categoryObj")Category categoryObj,ModelMap map){
		categoryObj.setStatus("true");
		categoryDao.insertCategory(categoryObj);
		map.addAttribute("msg","Category Added Succesfully");
		return "redirect:/admin/viewAllCategory";
	}

		@RequestMapping(value="/admin/viewAllCategory",method=RequestMethod.GET)
	public String listCategories(ModelMap map){
		List<Category> categories=categoryDao.listCategories(); 
		map.addAttribute("categoryList", categories);
		return "ViewAllCategories";
	}

		@RequestMapping(value="/admin/deleteCategory/{catId}",method=RequestMethod.GET)
		public String deleteCategoryMethod(@PathVariable("catId")int categoryId,ModelMap map){
			categoryDao.deleteCategory(categoryId);
			map.addAttribute("msg","Category Deleted Succesfully..");
			return "redirect:/admin/viewAllCategory";
		}	
}

package com.niit.studentsfrontend.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.backend.dao.SupplierDao;
import com.niit.backend.dto.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierDao supplierdao;
	
	@RequestMapping(value="/admin/supplier",method=RequestMethod.GET)
	public String getSupplierPage(){
		return "SupplierPage";
	}
	
	@RequestMapping(value="/admin/addSupplierForm",method=RequestMethod.GET)
	public String AddSupplier(ModelMap map){
		map.addAttribute("supplierObj",new Supplier());
		return"AddSupplier";		
	}
	
	@RequestMapping(value="/admin/addsupplier",method=RequestMethod.POST)
	public String addsupplierMethod(@ModelAttribute("supplierObj")Supplier supplierObj,ModelMap map){
		supplierObj.setStatus("true");
		supplierdao.insertSupp(supplierObj);
		map.addAttribute("msg","Supplier Added Succesfully");
		return "redirect:/admin/viewAllSupplier";
	}
	

	@RequestMapping(value="/admin/viewAllSupplier",method=RequestMethod.GET)
public String listSupplier(ModelMap map){
	List<Supplier> supplier=supplierdao.listSuppliers(); 
	map.addAttribute("supplierList", supplier);
	return "ViewAllSupplier";
}

	@RequestMapping(value="/admin/deleteSupplier/{suppId}",method=RequestMethod.GET)
	public String deleteSupplierMethod(@PathVariable("suppId")int supplierId,ModelMap map){
		supplierdao.deleteSupp(supplierId);
		List<Supplier> supplier=supplierdao.listSuppliers(); 
		map.addAttribute("supplierList", supplier);
		
		map.addAttribute("msg","Supplier Deleted Succesfully..");
		return "ViewAllSupplier";
	}	

}



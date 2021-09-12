package com.sarayaspringboot.springbootapp.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sarayaspringboot.springbootapp.entities.Laptop;
import com.sarayaspringboot.springbootapp.service.LaptopService;



@Controller
@SessionAttributes("username")
public class LaptopController {
	@Autowired
	LaptopService laptopService;
	@Autowired
	WelcomeController welcomeController;
	
	@RequestMapping(value = "/list-laptop", method=RequestMethod.GET)
	public String getAll(ModelMap model) {
		String username = (String) model.getAttribute("username");
		model.addAttribute("laptops", laptopService.getAll(username));
		return "listPage";
	}
	
	@RequestMapping(value = "/add-laptop", method=RequestMethod.GET)
	public String addLaptop(ModelMap model) {
		model.addAttribute("laptops", new Laptop());
		return "formPage";
	}
	
	@RequestMapping(value = "/add-laptop", method=RequestMethod.POST)
	public String add(@RequestParam String make, String model, String description, int price, String picture) {
		laptopService.addLaptop("Seck", make, model, description, price, picture);
		return "redirect:/list-laptop";
	}
	
	@RequestMapping(value = "/delete-laptop", method=RequestMethod.GET)
	public String deleteLaptop(@RequestParam int id, ModelMap model) {
		laptopService.deleteLaptop(id);
		model.clear();
		return "redirect:/list-laptop";
	}
	
	@RequestMapping(value = "/detail-laptop", method=RequestMethod.GET)
	public String detailsLaptop(@RequestParam Integer id, ModelMap model) {
		model.put("laptop", laptopService.findById(id));
		return "details";
	}
	
	@RequestMapping(value = "/laptop-update", method=RequestMethod.GET)
	public String updatingLaptop(@RequestParam Integer id, ModelMap model) {
		model.addAttribute("laptop", laptopService.findById(id));
		return "editPage";
	}
	
	@RequestMapping(value = "/laptop-update", method=RequestMethod.POST)
	public String updateTodo(@Validated Laptop laptop, ModelMap model, BindingResult result) {
		if (result.hasErrors())
			return "listPage";
			//todo.setUser();
			laptop.setUser(welcomeController.getLoggedInUser());
			laptopService.updateLaptop(laptop);
			model.clear();
			return "redirect:list-laptop";
	}
	
	@GetMapping("/home")
	public String loginPage() {
		return "home";
	}
}

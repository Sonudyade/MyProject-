package com.sony.MyProject.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sony.MyProject.dto.CustomerDTO;
import com.sony.MyProject.dto.Details;
import com.sony.MyProject.dto.ForgetPassDTO;
import com.sony.MyProject.dto.LoginDTO;
import com.sony.MyProject.entity.Customer;
import com.sony.MyProject.entity.MyProjectRegistrationDetails;
import com.sony.MyProject.services.CommanService;


@Controller
@RequestMapping("/")
public class MyprojectController {
	
	@Autowired
	public CommanService service;
	
	@RequestMapping(value = "/register" , method = RequestMethod.POST)
	public ModelAndView register(Details details) {	
	ModelAndView modelAndView = new ModelAndView();
	String msg = service.validateAndSave(details);
	System.out.println(msg);
	modelAndView.addObject("responseMSG", msg);
	modelAndView.setViewName("Home.jsp");
    return modelAndView;
	}
	@RequestMapping(value ="/login" ,method = RequestMethod.POST )
	public ModelAndView login(LoginDTO dto) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println(dto);
        String response = service.validateAndLogin(dto);
        System.out.println(response);
    	modelAndView.addObject("responseMSG", response);
    	
    	String customer="Customer";
    	String admin ="Admin";
    	String worker="Worker";
    	
    	if(dto.getProfile().equals(customer)) {
    		modelAndView.setViewName("/customerHome.jsp");
    	}else if(dto.getProfile().equals(admin)){
    		modelAndView.setViewName("/adminHome.jsp");
    	}else if(dto.getProfile().equals(worker)){
    		modelAndView.setViewName("/workerHome.jsp");
    		
    	}else {
    		modelAndView.setViewName("/login.jsp");
    	}
    	
        return modelAndView;
	}
	
	
		
	@RequestMapping(value = "/OTP", method = RequestMethod.POST)
	public ModelAndView sendOtp( String email) {
          ModelAndView modelAndView = new ModelAndView();
		  System.out.println(email);
		  String response = service.validateAndSentOtp(email);
		  System.out.println(response);
		  modelAndView.addObject("responseMSG", response);
		  modelAndView.setViewName("/forgetPassword.jsp");
		  return modelAndView;
		
	}
	@RequestMapping(value = "/forgetPassword",method = RequestMethod.POST)
	public ModelAndView forgetPassword(ForgetPassDTO dto) {
		 ModelAndView modelAndView = new ModelAndView();
		 System.out.println(dto);
		 String response = service.validateAndUpdatePassword(dto);
		 if("Password Updated Succesfully".equals(response)) {
			 modelAndView.setViewName("/login.jsp");
		 }else {
			 modelAndView.setViewName("/forgetPassword.jsp");
		 }
		
		 
		 
		 return modelAndView;
		
	}
	@RequestMapping(value = "/customerHome",method = RequestMethod.POST)
	public ModelAndView createTicket(CustomerDTO dto) {
		 ModelAndView modelAndView = new ModelAndView();
		 String response=service.validateAndSaveCustomer(dto);
		 System.out.println(response);
		 modelAndView.addObject("responseMSG", response);
		 modelAndView.setViewName("customerHome.jsp");
		 
		 return modelAndView;
	}
	
//
//	@RequestMapping(value = "/getAllTicket", method = RequestMethod.POST)
//    public ModelAndView getallticket(String email) {
//
//      ModelAndView modelAndView = new ModelAndView();
//	  List<Customer> dto = service.getAllTicket(email);
//	  System.out.println(dto);
//	  System.out.println(email);
//	  modelAndView.addObject("dto", dto);
//	  modelAndView.addObject("responseMSG", dto);
//	  modelAndView.setViewName("customerHome.jsp");
//	  return modelAndView;
//}

	@RequestMapping(value = "/getprofile/{id}", method = RequestMethod.GET)
    public ModelAndView getMyProfile(@PathVariable("id") String id) {
      ModelAndView modelAndView = new ModelAndView();
      System.out.println(id);
      List<Customer> response =service.getMyProfile(id);
	  System.out.println(response);
	  modelAndView.addObject("dto", response);
	  modelAndView.setViewName("customerHome.jsp");
	  return modelAndView;
	}
	@RequestMapping(value ="/getAllOpenTicket",method = RequestMethod.POST )
	public ModelAndView getallopenticket(String status) {
	    List<Customer> dtos = service.getAllOpenTicket(status);
		System.out.println(dtos);
		ModelAndView  modelAndView = new ModelAndView();
		  
		  modelAndView.addObject("dtos",dtos );
		  modelAndView.setViewName("/adminHome.jsp");
		return modelAndView;
	}
	@RequestMapping(value = "/workerHome", method = RequestMethod.POST)
    public ModelAndView getallticket(String asignee) {
      ModelAndView modelAndView = new ModelAndView();
	  List<Customer> dtos = service.getAllticket(asignee);
	  System.out.println(dtos);
	  modelAndView.addObject("responseMSG", dtos);
	  modelAndView.addObject("dtos",dtos );
	  modelAndView.setViewName("/workerHome.jsp");
	  return modelAndView;
}
	
	}



	
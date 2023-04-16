package com.sony.MyProject.services;

import java.util.List;

import com.sony.MyProject.dto.CustomerDTO;

import com.sony.MyProject.dto.Details;
import com.sony.MyProject.dto.ForgetPassDTO;
import com.sony.MyProject.dto.LoginDTO;
import com.sony.MyProject.entity.Customer;
import com.sony.MyProject.entity.MyProjectRegistrationDetails;


public interface CommanService {
	
	public String validateAndSave(Details details);

	public String validateAndLogin(LoginDTO dto);
	
	
	public String validateAndSentOtp(String email);
	
	public String validateAndUpdatePassword(ForgetPassDTO dto);
	
	public String validateAndSaveCustomer(CustomerDTO dto);
	
	
//	public List<Customer> getAllTicket(String email);

	public List<Customer> getMyProfile(String id);

	public List<Customer> getAllOpenTicket(String status);


	public List<Customer> getAllticket(String asignee);


	
	
	
	
	

}

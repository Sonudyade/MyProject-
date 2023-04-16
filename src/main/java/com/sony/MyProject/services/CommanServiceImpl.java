package com.sony.MyProject.services;

import java.util.List;


import org.springframework.beans.BeanUtils;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.sony.MyProject.dao.DetailsDAO;
import com.sony.MyProject.dto.CustomerDTO;
import com.sony.MyProject.dto.Details;
import com.sony.MyProject.dto.ForgetPassDTO;
import com.sony.MyProject.dto.LoginDTO;
import com.sony.MyProject.entity.Customer;
import com.sony.MyProject.entity.MyProjectRegistrationDetails;
import com.sony.MyProject.util.MyAppUtils;


import antlr.StringUtils;
@Service
public class CommanServiceImpl implements CommanService {

	@Autowired
	private DetailsDAO dao;
	
	
	@Autowired
	private MyAppUtils util;


	public String validateAndSave(Details details) {
		if (details.getEmail() != null && !details.getEmail().isEmpty()) {

			MyProjectRegistrationDetails regDetails = new MyProjectRegistrationDetails();
			
			BeanUtils.copyProperties(details, regDetails);

			dao.save(regDetails);
			return "Data saved";

		} else {
			return "Email Aleady Register";
		}

	}
	public String validateAndLogin(LoginDTO dto) {
		if (dto.getEmail() != null && !dto.getEmail().isEmpty()) {
			if (dto.getPassword() != null && !dto.getPassword().isEmpty()) {
				MyProjectRegistrationDetails registrationDetails = dao.getByEmailId(dto.getEmail());

				if (dto.getEmail().equals(registrationDetails.getEmail())
						&& dto.getPassword().equals(registrationDetails.getPassword())) {
					return dto.getEmail();

				} else {
					return "Invalid email and password";
				}

			} else {
				return "Invalid Password";
			}

		} else {
			return "Invalid email id";
		}
		}

	
	public String validateAndSentOtp(String email) {
		if(email != null && !email.isEmpty()) {
			MyProjectRegistrationDetails registrationDetails =dao.getByEmailId(email);
			if(registrationDetails != null) {
				int otp = util.generateOtp();
				//util.sendMail(email, otp);
				registrationDetails.setOTP(otp);
				
				dao.save(registrationDetails);
				
				return "OTP sent";
			}
			else {
				return  "email not registerd";
			}
				
		}else {
			return "invalid emailid";
		}
	
}
	public String validateAndUpdatePassword(ForgetPassDTO dto) {
		if(dto.getEmail()!=null&&!dto.getEmail().isEmpty()) {
			MyProjectRegistrationDetails registrationDetails =dao.getByEmailId(dto.getEmail());
			if(dto.getOtp()==registrationDetails.getOTP()) {
				if(dto.getNewPassword()!=null &&!dto.getNewPassword().isEmpty()) {
					if(dto.getNewCnfPassword()!=null && !dto.getNewCnfPassword().isEmpty()) {
						registrationDetails.setPassword(dto.getNewPassword());
						registrationDetails.setOTP(0);
						dao.save(registrationDetails);
					}else {
						return "Invalid Password";
					}
				}else {
					return"Invalid OTP";
				}
			}else {
				return "Invali Email";
			}
	
		}
		return "Password Updated Succsesfully";
	}
	public String validateAndSaveCustomer(CustomerDTO dto) {

		if(dto.getEmail()!=null &&!dto.getEmail().isEmpty()) {
			if(dto.getModel()!=null &&!dto.getModel().isEmpty()) {
				if(dto.getIssue()!=null &&!dto.getIssue().isEmpty()) {
		
			 
						Customer customer= new Customer();
						customer.setEmail(dto.getEmail());
						customer.setModel(dto.getModel());
						customer.setIssue(dto.getIssue());
		            customer.setStatus("open");
					customer.setCreationDate(0);
					dao.save(customer);
			   
			}
			else {
				return "enter valid issue";
			}
		}else {
			return"enter valid model";
		}
			
	}
	else{
			return"enter valid email";
	}
		return"Ticket Created";
	}
//}
//	public List<Customer> getAllTicket(String email) {
//
//		List<Customer> display=null;
//		if(email!=null && !email.isEmpty()) {
//			display =  dao.getByEmail(email);
//	    }
//		return display;
//
//	}
      
		public List<Customer> getMyProfile(String email) {
		
			List<Customer> show=null;
				if(email!=null && !email.isEmpty()) {
					show = dao.getByEmail(email);
		    }
				return show;			}
		
		
		
		
		
		public List<Customer> getAllOpenTicket(String status) {
			List<Customer> entity = (List<Customer>)dao.checkByStatus(status);
			System.out.println(entity);
			return entity;
		}
	
		public List<Customer> getAllticket(String asignee) {
			List<Customer> entity =(List<Customer>) dao.getByTicket(asignee);
			System.out.println(entity);
			return entity;
		}
		}



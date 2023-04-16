package com.sony.MyProject.dao;

import java.util.List;

import com.sony.MyProject.dto.Details;
import com.sony.MyProject.entity.Customer;
import com.sony.MyProject.entity.MyProjectRegistrationDetails;


public interface DetailsDAO {
	
   public void save(MyProjectRegistrationDetails details);
   
  
   public MyProjectRegistrationDetails getByEmailId(String email);
   
   public void save(Customer customer);
   
   public List<Customer> getByEmail(String email);
   
   public List<Customer> checkByStatus(String status);

   public List<Customer> getByTicket(String asignee);
}



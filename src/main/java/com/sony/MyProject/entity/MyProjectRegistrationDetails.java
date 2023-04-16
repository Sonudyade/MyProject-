package com.sony.MyProject.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name = "myproject_reg_details")
public class MyProjectRegistrationDetails {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="firstname")
	private String firstName;
	
	@Column(name="surename")
	private String sureName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
	
	@Column(name="contact")
	private long contact;
	
	@Column(name="dob")
	private String dob;

	@Column(name="city")
	private String city;
	
	@Column(name="state")
	private String state;
	
	@Column(name="country")
	private String country;
	
	@Column(name="zipcode")
	private int zipcode;
	
	@Column(name="otp")
	private int oTP;
	
	@Column(name="profile")
	private String profile;

	
}


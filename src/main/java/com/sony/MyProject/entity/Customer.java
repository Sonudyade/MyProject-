package com.sony.MyProject.entity;
import javax.persistence.Column;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "customer")
public class Customer {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="email")
	private String email;
	
	@Column(name="issue")
	private String issue;
	
	@Column(name="creationDate")
	private long creationDate;
	
	@Column(name="modificationDate")
	private String modificationDate;

	@Column(name="status")
	private String status;
	
	@Column(name="asignee")
	private String asignee;
	
	@Column(name="model")
	private String model;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	public long getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(long creationDate) {
		this.creationDate = creationDate;
	}

	public String getModificationDate() {
		return modificationDate;
	}

	public void setModificationDate(String modificationDate) {
		this.modificationDate = modificationDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAsignee() {
		return asignee;
	}

	public void setAsignee(String asignee) {
		this.asignee = asignee;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", email=" + email + ", issue=" + issue + ", creationDate=" + creationDate
				+ ", modificationDate=" + modificationDate + ", status=" + status + ", asignee=" + asignee + ", model="
				+ model + "]";
	}
	

}

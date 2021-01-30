package com.uncc.ssdi.model;

import io.swagger.annotations.ApiModel;

/**
 * @author Venkat Bandaru
 *
 */
@ApiModel(description="Contact US Form Details")
public class ContactUSBean {
	
	private String name;
	private String subject;
	private String email;
	private String message;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	 
	

}

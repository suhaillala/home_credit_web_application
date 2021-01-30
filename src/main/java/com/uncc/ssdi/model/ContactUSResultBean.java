package com.uncc.ssdi.model;

import io.swagger.annotations.ApiModel;

/**
 * @author Venkat Bandaru
 *
 */
@ApiModel(description="Contact US Result Bean")
public class ContactUSResultBean {
	
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}

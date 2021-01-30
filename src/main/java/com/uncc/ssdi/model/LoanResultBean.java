package com.uncc.ssdi.model;
import io.swagger.annotations.ApiModel;
/**
 * @author Venkat Bandaru
 *
 */
@ApiModel(description="Loan Result Bean Details")
public class LoanResultBean {
	
	private String loanAmount;
	
	public String getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}
	
	@Override
	public String toString() {
		return "Loan Application Result [Loan Amount=" + loanAmount + "]";
	}

}

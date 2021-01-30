package com.uncc.ssdi.model;
import io.swagger.annotations.ApiModel;

/**
 * @author Venkat Bandaru
 *
 */
@ApiModel(description="User Loan From Details")
public class UserLoanFrom {
	
   private String gender;
   private String ownCar;
   private String noOfChildren;
   private String totalIncome;
   private String totalCredit;
   private String educationType;
   private String familyStatus;
   private String dob;
   private String employedDays;
   private String phoneFlag;
   private String occupation;
   
   public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getOwnCar() {
		return ownCar;
	}
	public void setOwnCar(String ownCar) {
		this.ownCar = ownCar;
	}
	public String getNoOfChildren() {
		return noOfChildren;
	}
	public void setNoOfChildren(String noOfChildren) {
		this.noOfChildren = noOfChildren;
	}
	public String getTotalIncome() {
		return totalIncome;
	}
	public void setTotalIncome(String totalIncome) {
		this.totalIncome = totalIncome;
	}
	public String getTotalCredit() {
		return totalCredit;
	}
	public void setTotalCredit(String totalCredit) {
		this.totalCredit = totalCredit;
	}
	public String getEducationType() {
		return educationType;
	}
	public void setEducationType(String educationType) {
		this.educationType = educationType;
	}
	public String getFamilyStatus() {
		return familyStatus;
	}
	public void setFamilyStatus(String familyStatus) {
		this.familyStatus = familyStatus;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmployedDays() {
		return employedDays;
	}
	public void setEmployedDays(String employedDays) {
		this.employedDays = employedDays;
	}
	public String getPhoneFlag() {
		return phoneFlag;
	}
	public void setPhoneFlag(String phoneFlag) {
		this.phoneFlag = phoneFlag;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	
	@Override
	public String toString() {
		return "UserLoanFrom [Gender=" + gender + ", Own Car=" + ownCar + ", No Of Children=" + noOfChildren + ", Total Income=" + totalIncome + 
				", Total Credit=" + totalCredit + ", Education Type=" + educationType + ", Family Status=" + familyStatus + ", Date Of Birth=" + dob 
				+ ", No Of Days Employed=" + employedDays + ", Phone Flag=" + phoneFlag + ", Occupation=" + occupation +  "]";
	}
}

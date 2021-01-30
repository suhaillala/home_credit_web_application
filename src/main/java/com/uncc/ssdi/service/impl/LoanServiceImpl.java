package com.uncc.ssdi.service.impl;

import java.io.IOException;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import org.apache.http.client.fluent.Content;
import org.apache.http.client.fluent.Request;
import org.apache.http.entity.ContentType;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.uncc.ssdi.model.LoanResultBean;
import com.uncc.ssdi.model.UserLoanFrom;
import com.uncc.ssdi.service.LoanService;

/**
 * @author Venkat Bandaru
 *
 */
@Service
public class LoanServiceImpl implements LoanService {
	
	@SuppressWarnings("unchecked")
	@Override
	public LoanResultBean showLoanApplicationResult(UserLoanFrom userLoanFrom) {
		
		JSONObject obj = new JSONObject();
        JSONArray innerItem = new JSONArray();
        JSONObject outerItem = new JSONObject();
        JSONObject dataItem = new JSONObject();
        LoanResultBean loanResultBean = new LoanResultBean();
        
        System.out.println(userLoanFrom);

        dataItem.put("CODE_GENDER",userLoanFrom.getGender());
        dataItem.put("FLAG_OWN_CAR",userLoanFrom.getOwnCar());
        dataItem.put("CNT_CHILDREN",userLoanFrom.getNoOfChildren());
        dataItem.put("AMT_INCOME_TOTAL",userLoanFrom.getTotalIncome());
        dataItem.put("AMT_CREDIT",userLoanFrom.getTotalCredit());
        dataItem.put("NAME_EDUCATION_TYPE",userLoanFrom.getEducationType());
        dataItem.put("NAME_FAMILY_STATUS",userLoanFrom.getFamilyStatus());
        dataItem.put("DAYS_BIRTH", calculateNoOfDays(userLoanFrom.getDob()));
        dataItem.put("DAYS_EMPLOYED", calculateNoOfDays(userLoanFrom.getEmployedDays()));
        dataItem.put("FLAG_PHONE",userLoanFrom.getPhoneFlag());
        dataItem.put("OCCUPATION_TYPE",userLoanFrom.getOccupation());

        innerItem.add(dataItem);
        outerItem.put("WebServiceInput0", innerItem);
        obj.put("Inputs", outerItem);
        obj.put("GlobalParameters", new JSONObject());

        // Make the request using the JSON document string
        loanResultBean = sendRequest(obj.toJSONString());
        return loanResultBean;
    }

    // Handle making the request
    public LoanResultBean sendRequest(String data) {
        // Replace with the scoring_uri of your service
        String uri = "http://52.167.63.182:80/api/v1/service/ml-deploy/score";
        LoanResultBean loanResult = new LoanResultBean();
        // If using authentication, replace with the auth key or token
        String key = "Sfv9he9CgVEaotxb4QMzm2CiUBLI7xbh";
        try {
            // Create the request
            Content content = Request.Post(uri)
                    .addHeader("Content-Type", "application/json")
                    // Only needed if using authentication
                    .addHeader("Authorization", "Bearer " + key)
                    // Set the JSON data as the body
                    .bodyString(data, ContentType.APPLICATION_JSON)
                    // Make the request and display the response.
                    .execute().returnContent();
            System.out.println(content.toString().replaceAll("[^0-9.]",""));
            loanResult.setLoanAmount(content.toString().replaceAll("[^0-9.]",""));
            //loanResult.setPredictedFlag(content.toString());
        }
        catch (IOException e) {
            System.out.println(e);
        }
		return loanResult;
    }
    
    
    public String calculateNoOfDays(String dateBefore)
    {
    	LocalDate from = LocalDate.now();
	 	LocalDate dateBeforew = LocalDate.parse(dateBefore);
	 	long noOfDaysBetween = ChronoUnit.DAYS.between(from, dateBeforew);
	 	System.out.println("noOfDaysBetween: "+noOfDaysBetween);
	    return Long.toString(noOfDaysBetween);
    }
    
}

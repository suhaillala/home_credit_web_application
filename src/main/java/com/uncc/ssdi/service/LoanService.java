package com.uncc.ssdi.service;

import com.uncc.ssdi.model.LoanResultBean;
import com.uncc.ssdi.model.UserLoanFrom;

/**
 * @author Venkat Bandaru
 *
 */
public interface LoanService {
	
	LoanResultBean showLoanApplicationResult(UserLoanFrom userLoanFrom);

}

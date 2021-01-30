package com.uncc.ssdi.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.ValidationException;
import org.springframework.http.HttpStatus;

import com.uncc.ssdi.model.LoanResultBean;
import com.uncc.ssdi.model.UserLoanFrom;
import com.uncc.ssdi.service.LoanService;
import io.swagger.annotations.ApiOperation;
/**
 * @author Venkat Bandaru
 *
 */
@Controller
public class LoanApplicationController {
	
	@Autowired
	LoanService loanService;
	
	@ApiOperation(value="firstPage", notes="First Welcome Page" )
	@RequestMapping("/welcome")
	public ModelAndView firstPage() {
		return new ModelAndView("welcome");
	}

	@ApiOperation(value="show", notes="Show Loan Application")
	//@RequestMapping(value = "/submitLoanApplication", method = RequestMethod.GET)
	@GetMapping("/submitLoanApplication")
	public ModelAndView show() {
		return new ModelAndView("showLoanApplication", "userLoanFrom", new UserLoanFrom());
	}
	
	@ApiOperation(value="aboutusPage", notes="About Us Page" )
	@RequestMapping("/about-us")
	public ModelAndView aboutusPage() {
		return new ModelAndView("about-us");
	}
	
	@ApiOperation(value="helpPage", notes="Help Page" )
	@RequestMapping("/help")
	public ModelAndView helpPage() {
		return new ModelAndView("help");
	}
	
	@ApiOperation(value="faqPage", notes="FAQ Page" )
	@RequestMapping("/faq")
	public ModelAndView faqPage() {
		return new ModelAndView("faq");
	}
	
	
	
	@ApiOperation(value="processRequest", notes="Process Loan Application" )
	//@RequestMapping(value = "/submitLoanApplication", method = RequestMethod.POST)
	@PostMapping(value="/submitLoanApplication")
	@ResponseStatus(HttpStatus.CREATED)
	public ModelAndView processRequest(@ModelAttribute("userLoanFrom") UserLoanFrom userLoanFrom) {
		
		LoanResultBean loanResultBean = loanService.showLoanApplicationResult(userLoanFrom);
		ModelAndView model = new ModelAndView("results");
		model.addObject("loansResult", loanResultBean);
		return model;
	}
	
	
	
	@ExceptionHandler(ValidationException.class)
	public ResponseEntity<String> handelValidationError(ValidationException ve) {
		return new ResponseEntity<String>(ve.getMessage(), HttpStatus.BAD_REQUEST);
	}
	
}

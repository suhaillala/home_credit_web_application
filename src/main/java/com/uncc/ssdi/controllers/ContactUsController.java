package com.uncc.ssdi.controllers;

import javax.validation.ValidationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ssdi.model.ContactUSBean;
import com.uncc.ssdi.model.ContactUSResultBean;
import com.uncc.ssdi.service.ContactUsService;

import io.swagger.annotations.ApiOperation;

/**
 * @author Venkat Bandaru
 *
 */
@Controller
public class ContactUsController {
	
	@Autowired
	ContactUsService contactUsService;
	
	@ApiOperation(value="contactusPage", notes="Contact Us Page" )
	@RequestMapping("/contact-us")
	public ModelAndView contactusPage() {
		return new ModelAndView("contact-us", "contactUSBean", new ContactUSBean());
	}
	
	@ApiOperation(value="processContactUSRequest", notes="Process Contact US Form" )
	//@RequestMapping(value = "/submitLoanApplication", method = RequestMethod.POST)
	@PostMapping(value="/contact-us")
	@ResponseStatus(HttpStatus.CREATED)
	public ModelAndView processContactUSRequest(@ModelAttribute("contactUSBean") ContactUSBean contactUSBean) {
		
		ContactUSResultBean contactUSResultBean = contactUsService.showMailSentResult(contactUSBean);
		ModelAndView model = new ModelAndView("conatct-us-update");
		model.addObject("conatctusupdate", contactUSResultBean);
		return model;
	}
	
	
	
	@ExceptionHandler(ValidationException.class)
	public ResponseEntity<String> handelValidationError(ValidationException ve) {
		return new ResponseEntity<String>(ve.getMessage(), HttpStatus.BAD_REQUEST);
	}
	

}

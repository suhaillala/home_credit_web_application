package com.uncc.ssdi.service;

import com.uncc.ssdi.model.ContactUSBean;
import com.uncc.ssdi.model.ContactUSResultBean;

/**
 * @author Venkat Bandaru
 *
 */
public interface ContactUsService {
	
	ContactUSResultBean showMailSentResult(ContactUSBean contactUSBean);

}

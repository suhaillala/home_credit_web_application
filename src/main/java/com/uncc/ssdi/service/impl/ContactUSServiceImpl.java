package com.uncc.ssdi.service.impl;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import com.uncc.ssdi.model.ContactUSBean;
import com.uncc.ssdi.model.ContactUSResultBean;
import com.uncc.ssdi.service.ContactUsService;


/**
 * @author Venkat Bandaru
 *
 */
@Service
public class ContactUSServiceImpl implements ContactUsService {

	@Override
	public ContactUSResultBean showMailSentResult(ContactUSBean contactUSBean) {
		ContactUSResultBean cBean = new ContactUSResultBean();
		cBean.setResult(sendmail(contactUSBean));
		return cBean;
	}
	
	
	public String sendmail(ContactUSBean cub){
		 
		final String username = "ISS.BOSE.2015@gmail.com";
		final String password = "XXXXX";
		String result = "";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
				  new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, password);
					}
				  });
 

		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("ISS.BOSE.2015@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("ISS.BOSE.2015@gmail.com"));
			message.setSubject("SSDI On Line Loan Predict App Contact US Filled Form");
			message.setText("Hello,"
					+ "\n\n Message From SSDI On Line Loan App , "
					+ "\n\n Here is your Name : " + cub.getName()
					+ "\n\n Here is your Subject : " + cub.getSubject()
					+ "\n\n Here is your Email : " + cub.getEmail()
					+ "\n\n Here is your Message : " + cub.getMessage());
 
			Transport.send(message);
			result = "Success" ;
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			result = "Failure" ;
			throw new RuntimeException(e);
		}
		return result;
	}

}

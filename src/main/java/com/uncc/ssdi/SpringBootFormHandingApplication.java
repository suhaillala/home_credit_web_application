package com.uncc.ssdi;

import java.util.Optional;
import java.util.Properties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author Venkat Bandaru
 *
 */
@SpringBootApplication
@EnableSwagger2
public class SpringBootFormHandingApplication  {

	// Get PORT and HOST from Environment or set default
    public static final Optional<String> host;
    public static final Optional<String> port;
    public static final Properties myProps = new Properties();

    static {
        host = Optional.ofNullable(System.getenv("HOSTNAME"));
        port = Optional.ofNullable(System.getenv("PORT"));
    }
    
 
    public static void main(String[] args) {
        // Set properties

        myProps.setProperty("server.address", host.orElse("localhost"));
        myProps.setProperty("server.port", port.orElse("8081"));

        SpringApplication app = new SpringApplication(SpringBootFormHandingApplication.class);
        app.setDefaultProperties(myProps);
        app.run(args);

    }    
	
}
package org.peluqueria.samples.petclinic.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SupportController {
	
	@GetMapping(value="/support")
	  public String support(Map<String, Object> model) {	    

	    return "support";
	  }

}

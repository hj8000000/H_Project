package com.example.dnltime;

import java.text.ParseException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.CityRegisterController;
import com.example.dnltime.service.DnltimeRegisterService;
import com.example.dnltime.service.DnltimeSearchService;
import com.example.domain.Dnltime;

@Controller
@RequestMapping("/dnltime")
public class DnltimeRegisterController {
	
	static Log log = LogFactory.getLog(CityRegisterController.class);
	
	@Autowired
	DnltimeSearchService dnltimeSearchService;
	
	@Autowired
	DnltimeRegisterService dnltimeRegisterService;
	
	
	@GetMapping("/registerAttend/{pageNo}")
	public String registerSuccess(@PathVariable int pageNo, Dnltime dnltime, BindingResult errors) throws ParseException {
		
		dnltimeRegisterService.registerAttend(dnltime, errors);
		if ( errors.hasErrors() ) {
			System.out.println(errors);
			return "dnltime/registerForm";
		}		
		
		return "redirect:/dnltime/page/" + pageNo;
	}
}

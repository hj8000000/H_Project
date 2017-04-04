package com.example.emp;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Emp;
import com.example.emp.service.EmpSearchService;

@Controller
@RequestMapping("/emp")
public class EmpSearchController {
	
	static Log log = LogFactory.getLog(EmpSearchController.class);
	@Autowired
	EmpSearchService empSearchService;
	
	@GetMapping("/list")
	public String getList(Model model) {
		log.info("getList()");
		
		List<Emp> list = empSearchService.getListAll(true);
		model.addAttribute("emps", list);
		
		return "emp/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model) {
		log.info("getPage(" + pageNo + ")");
		
		Map<String, Object> page = empSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "emp/page";
	}
	
	@GetMapping("/item/{id}")
	public String getItemById(@PathVariable int id, Model model) {
		log.info("getItem("+ id + ")");
		
		Emp emp = empSearchService.getEmpById(id, true);
		model.addAttribute("emp", emp);
		
		return "emp/item";
	}
	

}

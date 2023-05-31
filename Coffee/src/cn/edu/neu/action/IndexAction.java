package cn.edu.neu.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.neu.model.Coffee;
import cn.edu.neu.service.CoffeeService;

@Controller
public class IndexAction extends BaseAction{
	@Autowired
	CoffeeService coffeeService;
	@RequestMapping("/index")
	public String getIndexPage(Map<String,List> m){
		System.out.println("indexaction");
		List<Coffee> List=coffeeService.getNewCoffee();
		m.put("List", List);
	  System.out.println(List+"ssss");
		return "home";
	}

}

package cn.edu.neu.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.neu.model.Information;
import cn.edu.neu.service.InformationService;

@Controller
@RequestMapping("/information")
public class InformationAction extends BaseAction{
	 @Autowired
	 private InformationService informationService;
		@RequestMapping("/getAllInformation")
		  public String getAllInformationList(Map<String, List<Information>> m) {
		    List<Information> informations = informationService.getAllInformation();
		    m.put("informations", informations);
		    return "/information/informationList";
		  }
		
}

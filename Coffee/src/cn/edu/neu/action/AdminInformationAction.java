package cn.edu.neu.action;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Information;
import cn.edu.neu.service.InformationService;

@Controller
@RequestMapping("/admin/information")
public class AdminInformationAction extends BaseAction{
	@Autowired
	InformationService informationService;
	@RequestMapping("/getAdminInformations")
	  public String getAdminInformations(@RequestParam(required = false) String informationId, @RequestParam(required = false) String informationName,
			    Map<String, Object> m) {
		Page<Information> informations=informationService.getAdminSearchInformations( informationId,informationName);
		m.put("informations", informations);
		return "/admin/information/informationList";
	}
	@RequestMapping("/delInformation")
	  public String delInformation(String informationId,Map<String, Object> m, @RequestParam(required = false) String informationName) {
		informationService.delete(informationId);
		Page<Information> informations=informationService.getAdminSearchInformations(informationId,informationName);
		m.put("informations", informations);
		return "/admin/information/informationList";
	}
	@RequestMapping("/doHandleInformation")
	  public String doHandleInformation(Information information) {
	/*	informationService.doHandleInformation(information);
		System.out.println("~~~~~~");*/
		//System.out.println(informationName+"informationName");
		//System.out.println(informationId+"informationId");
	//	System.out.println("~~~~~~");
		try{
		if(information.getInformationId()==0){
			informationService.addInformation(information);
			this.addMessage("添加资讯信息成功");
			this.addRedirURL("返回","/admin/information/getAdminInformations");	
			return EXECUTE_RESULT;
		}
		else{
			informationService.updateInformation(information);
			this.addMessage("修改资讯信息成功");
			this.addRedirURL("返回",getReferUrl());	
			return EXECUTE_RESULT;
		}
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();			
		this.addMessage("操作咖啡分类失败");
		this.addRedirURL("返回","@back");
		return EXECUTE_RESULT;
	  /*  return "redirect:/admin/information/getAdminInformations";*/
	  }}

	
	
	
	 @RequestMapping("/handleInformation")
	  public String handleInformation(@RequestParam(required = false) String informationId, Map<String, Object> m) {
	    if (informationId != null && !informationId.equals("")) {
	      Information information = informationService.getInformationById(informationId);
	      m.put("information", information);
	    }
	   
	    return "/admin/information/handleInformation";
}
	 
}

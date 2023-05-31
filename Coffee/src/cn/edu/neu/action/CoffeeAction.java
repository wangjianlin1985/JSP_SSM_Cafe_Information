package cn.edu.neu.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Coffee;
import cn.edu.neu.model.Collection;
import cn.edu.neu.service.CoffeeService;

@Controller
@RequestMapping("/coffee")
public class CoffeeAction extends BaseAction{
	@Autowired
	CoffeeService coffeeService;
	@ResponseBody
	@RequestMapping("/getNewCoffee")	
	public Map<String, List<Coffee>> getNewCoffee(){
		List<Coffee> coffee=coffeeService.getNewCoffee();
		Map<String,List<Coffee>> m=new HashMap<String,List<Coffee>>();
		m.put("coffee", coffee);
		System.out.println("#######"+coffee);
		return m;
		   }

	@RequestMapping("/searchCoffee")
	public String searchCoffee(HttpServletRequest request,@RequestParam String keyword,@RequestParam(required=false) String sort,
			Map<String,Page<Coffee>> m) throws UnsupportedEncodingException{
		System.out.println(keyword);
		Page<Coffee> searchCoffee=coffeeService.searchCoffee(keyword,sort);
		m.put("coffeeList", searchCoffee);
		
		System.out.println("######"+m);
		
		return "/coffee/coffeeList";
	}


	@RequestMapping("/getSaleCoffee")	
	public Map<String, List<Coffee>> getSaleCoffee(){
		List<Coffee> coffee=coffeeService.getSaleCoffee();
		Map<String,List<Coffee>> m=new HashMap<String,List<Coffee>>();
		m.put("coffee", coffee);
		//System.out.println("#######"+coffee);
		return m;
		   }


	@ResponseBody
	@RequestMapping("/getAllCoffee")	
	public Map<String, List<Coffee>> getAllCoffee(){
		List<Coffee> coffeeList=coffeeService.getAllCoffee();
		Map<String,List<Coffee>> m=new HashMap<String,List<Coffee>>();
		m.put("coffeeList", coffeeList);
		return m;
		   }

	@RequestMapping("/getCoffeeByCate")
	public String getCoffeeByCate(@RequestParam String cateId,Map<String,Object> m,
			@RequestParam(required=false) String sort,@RequestParam(required=false) boolean flag){
		Page<Coffee> coffeeList=coffeeService.getCoffeeByCate(cateId,sort);
		m.put("coffeeList",coffeeList);
		m.put("flag",flag);
		return "/coffee/coffeeList";
	}
	@RequestMapping("/addFavorite")
	public String addFavorite(@RequestParam String coffeeId,@RequestParam String cateId,@RequestParam String typId,@RequestParam String userId,
			Map<String,Page<Coffee>> m){	
	/*	System.out.println(this.getLoginUserId());*/
		try{
			/*System.out.println(coffeeId);
			System.out.println(cateId);
			System.out.println(typId);
			System.out.println(userId);*/
			String.valueOf(this.getLoginUserId());
			
			coffeeService.addFavorite(coffeeId,typId,cateId,String.valueOf(this.getLoginUserId()));
			this.addMessage("收藏成功");
			this.addRedirURL("返回", "/coffee/getCoffeeByCate?cateId="+cateId);
		}
		catch(Exception e){
			e.printStackTrace();
			this.addMessage("已收藏过");
			this.addRedirURL("返回", "@back");
		}
		return EXECUTE_RESULT;
	}


	@RequestMapping("/getCoffeeDetailById")
	public	String getCoffeeDetailById(@RequestParam String coffeeId, Map<String,Coffee> m){
		Coffee coffeeDetail=coffeeService.getCoffeeDetailById(coffeeId);
			
			m.put("coffeeDetail",coffeeDetail);


			return "/coffee/coffeeDetail";
	}
	
	@RequestMapping("/buyCoffee")
	String buyCoffee(@RequestParam(required=false) String[] coffeeId,
			@RequestParam(required=false) String[] coffeeName,
			@RequestParam(required=false) String[] coffeePrice,
			@RequestParam(required=false) String[] coffeeDiscount,
			@RequestParam(required=false) String[] num,
			@RequestParam(required=false) String[] coffeePic, 
			Map<String,Object> m){
		m.put("num",num);
		m.put("coffeeId", coffeeId);
		m.put("coffeeName", coffeeName);
		m.put("coffeePrice", coffeePrice);
		m.put("coffeeDiscount", coffeeDiscount);
		m.put("coffeePic",coffeePic);
		List<Coffee> coffee=coffeeService.getCoffeeByUserId(this.getLoginUserId());
		m.put("coffee", coffee);
		
		return "/coffee/buyCoffee";

}
	
	@RequestMapping("/getCollection")

	public String getCollection(@RequestParam String userId, Map<String,List<Collection>> m){
		String.valueOf(this.getLoginUserId());
		List<Collection> collection=coffeeService.getCollection(String.valueOf(this.getLoginUserId()));
		m.put("collection", collection);
		return "/coffee/CollectionList";
	}
}



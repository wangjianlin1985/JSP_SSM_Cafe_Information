package cn.edu.neu.action;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.User;
import cn.edu.neu.service.UserService;

@Controller
@RequestMapping("/admin/user")
public class AdminUserAction extends BaseAction{

	@Autowired
	UserService userService;
	@RequestMapping("/getAdminUsers")
	  public String getAdminUsers(@RequestParam(required = false) String userId, @RequestParam(required = false) String userName,
			    Map<String, Object> m) {
		Page<User> users=userService.getAdminSearchUsers(userId,userName);
		m.put("users", users);
		return "/admin/user/userList";
	}
	
	@RequestMapping("/delUser")
	  public String delUser(String userId,Map<String, Object> m, @RequestParam(required = false) String userName) {
		userService.delete(userId);
		Page<User> users=userService.getAdminSearchUsers(userId,userName);
		m.put("users", users);
		return "/admin/user/userList";
	}
	
	
	@RequestMapping("/doHandleUser")
	  public String doHandleUser(User user) {
	
		try{
			if(user.getUserId()==0){
				userService.addUser(user);
				this.addMessage("添加用户信息成功");
				this.addRedirURL("返回","/admin/user/getAdminUsers");	
				return EXECUTE_RESULT;
			}
			else{
				userService.updateUser(user);
				this.addMessage("修改用户信息成功");
				this.addRedirURL("返回",getReferUrl());	
				return EXECUTE_RESULT;
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();			
			this.addMessage("操作用户信息失败");
			this.addRedirURL("返回","@back");
			return EXECUTE_RESULT;
	  /*  return "redirect:/admin/user/getAdminUsers";*/
	  }}
	
	
	
	
	 @RequestMapping("/handleUser")
	  public String handleUser(@RequestParam(required = false) String userId, Map<String, Object> m) {
	    if (userId != null && !userId.equals("")) {
	      User user = userService.getUserById(userId);
	      m.put("user", user);
	    }
	   
	    return "/admin/user/handleUser";
	  }
}

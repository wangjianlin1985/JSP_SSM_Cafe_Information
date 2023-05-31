package cn.edu.neu.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.neu.core.Constants;
import cn.edu.neu.model.User;
import cn.edu.neu.service.UserService;

@Controller
@RequestMapping("/user")
public class UserAction extends BaseAction {

  @Autowired
  private UserService userService;

  /**
   * 用户登录
   */
  @ResponseBody
  @RequestMapping("/login")
  public Map<String, String> login(User user, HttpSession session) {
    System.out.println("userlogin:" + user);
    User dbUser = userService.checkUser(user);
    //System.out.println(user.getUserName()+","+user.getPassword()+"--------"+user1);
    Map<String, String> m = new HashMap<String, String>();
    if (dbUser != null) {
      session.setAttribute(Constants.LOGIN_USER, dbUser);
      m.put("login", "yes");

      System.out.println("######" + m);

    } else {
      //this.addMessage(Constants.LOGIN_ERR);
      //this.addRedirURL("返回登录页面", INDEX_PAGE);
      m.put("login", "no");
    }
    return m;
  }

  /**
   * 用户登出
   */
  @ResponseBody
  @RequestMapping("/logout")
  public Map<String, String> logout() throws Exception {
    getSession().invalidate();
    Map<String, String> m = new HashMap<String, String>();
    m.put("logout", "yes");
    return m;
  }

  /**
   * 用户注册
   */
  @ResponseBody
  @RequestMapping("/reg")
  public Map<String, String> reg(User user) throws Exception {
    boolean f = userService.regUser(user);
    HashMap<String, String> m = new HashMap<String, String>();
    if (f) {
      m.put("reg", "yes");

    } else
      m.put("reg", "no");
    return m;
  }

  /**
   * 检查用户是否重复
   */
  @ResponseBody
  @RequestMapping("/checkUserName")
  public Map<String, Boolean> checkUserName(@RequestParam String userName) throws Exception {
    boolean f = userService.checkUserName(userName);
    HashMap<String, Boolean> m = new HashMap<String, Boolean>();
    m.put("available", f);

    return m;
  }

  /**
   * 获取所有用户列表
   * @param request
   * @return
   */

  /**
   * 管理员登录
   */
  @ResponseBody
  @RequestMapping("/adminlogin")
  public Map<String, String> adminlogin(User user, HttpSession session) {
    System.out.println("--------" + user);
    User dbUser = userService.checkAdmin(user);
    //System.out.println(user.getUserName()+","+user.getPassword()+"--------"+user1);
    Map<String, String> m = new HashMap<String, String>();
    if (dbUser != null) {
      session.setAttribute(Constants.LOGIN_USER, dbUser);
      m.put("login", "yes");
    } else {
      //this.addMessage(Constants.LOGIN_ERR);
      //this.addRedirURL("返回登录页面", INDEX_PAGE);
      m.put("login", "no");
    }
    return m;
  }

}

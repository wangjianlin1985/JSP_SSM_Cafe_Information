package cn.edu.neu.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("page")
public class PageAction {

  @RequestMapping("/admin")
  public String getPage(String admin) {
    return "/admin/home";
  }
}

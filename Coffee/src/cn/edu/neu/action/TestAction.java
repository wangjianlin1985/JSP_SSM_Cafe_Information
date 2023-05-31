package cn.edu.neu.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class TestAction {
  @RequestMapping("/tiaozhuan")
  public String getliuyan() {
    System.out.println("~~~~~");
    return "index";
  }
}

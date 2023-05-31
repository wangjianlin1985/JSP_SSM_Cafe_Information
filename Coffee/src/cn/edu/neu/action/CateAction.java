package cn.edu.neu.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.neu.model.Category;
import cn.edu.neu.service.CateService;

@Controller
@RequestMapping("/cate")
public class CateAction extends BaseAction {

  @Autowired
  CateService cateService;

  @RequestMapping("/getAllCatesList")
  public String getAllCatesList(Map<String, List<Category>> m) {
    List<Category> cates = cateService.getAllCates();
    m.put("cates", cates);
    return "/cate/cateList";
  }


  @ResponseBody
  @RequestMapping("/getAllCates")
  public Map<String, List<Category>> getAllCates() {
    List<Category> cates = cateService.getAllCates();
    Map<String, List<Category>> m = new HashMap<String, List<Category>>();
    m.put("cates", cates);
    return m;
  }

}
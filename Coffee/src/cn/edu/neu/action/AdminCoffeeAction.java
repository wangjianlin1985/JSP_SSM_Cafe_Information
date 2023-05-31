package cn.edu.neu.action;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Category;
import cn.edu.neu.model.Coffee;
import cn.edu.neu.service.CateService;
import cn.edu.neu.service.CoffeeService;

@Controller
@RequestMapping("/admin/coffee")
public class AdminCoffeeAction extends BaseAction {

  @Autowired
  CateService cateService;

  @Autowired
  CoffeeService coffeeService;

  @RequestMapping("/getAdminCoffee")
  public String getAdminCoffee(@RequestParam(required = false) String cateId, @RequestParam(required = false) String coffeeName,
    @RequestParam(required = false) String sort,
    Map<String, Object> m) {
    List<Category> cates = cateService.getAllCates();
    Page<Coffee> coffee = coffeeService.getAdminSearchCoffee(cateId, coffeeName, sort);
    m.put("cates", cates);
    m.put("coffee", coffee);
    System.out.println(coffee);
    
    return "/admin/coffee/coffeeList";
  }

  @RequestMapping("/handleCoffee")
  public String handleCoffee(@RequestParam(required = false) String coffeeId, Map<String, Object> m) {
    if (coffeeId != null && !coffeeId.equals("")) {
      Coffee coffee = coffeeService.getCoffeeById(coffeeId);
      m.put("coffee", coffee);
    }
    List<Category> cates = cateService.getAllCates();
    m.put("cates", cates);
    return "/admin/coffee/handleCoffee";
  }

  @RequestMapping("/doHandleCoffee")
  public String doHandleCoffee(HttpServletRequest request, Coffee coffee) {
    System.out.println("coffee:" + coffee);
    String oldpicpath = coffee.getCoffeePic();

    String coffeepicpath = "";
    if (coffee.getCoffeePicFile() != null) {
      if (coffee.getCoffeePicFile().getContentType().equals("image/jpeg") || coffee.getCoffeePicFile().getContentType().equals("image/png")) {

        String oriFilename = coffee.getCoffeePicFile().getOriginalFilename();
        String extFilename = oriFilename.substring(oriFilename.indexOf("."), oriFilename.length());
        System.out.println("ext:" + extFilename);
        coffeepicpath = "/images/coffee/" + Calendar.getInstance().getTimeInMillis() + extFilename;
        coffee.setCoffeePic(coffeepicpath);

        String path = request.getServletContext().getRealPath(coffeepicpath);
        File file = new File(path);
        try {
          if (coffee.getCoffeePicFile() != null) {
            if (coffee.getCoffeeId() != 0) {
              File f = new File(request.getServletContext().getRealPath(oldpicpath));
              f.delete();
            }
            coffee.getCoffeePicFile().transferTo(file);
          }
        } catch (Exception e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
          this.addMessage("图片上传失败");
          this.addRedirURL("返回", "@back");
        }
      } else {
        this.addMessage("上传图片类型不正确，请上传jpg或png格式图片");
        this.addRedirURL("返回", "@back");
        return EXECUTE_RESULT;
      }
    }

    try {
      if (coffee.getCoffeeId() == 0) {
        coffeeService.addCoffee(coffee);
        this.addMessage("添加咖啡成功");
        System.out.println("referurl:" + getReferUrl());
        this.addRedirURL("返回", "/admin/coffee/getAdminCoffee");
      } else {
        coffeeService.updateCoffee(coffee);
        this.addMessage("修改咖啡成功");
        this.addRedirURL("返回", getReferUrl());
      }
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      this.addMessage("操作商品失败");
      this.addRedirURL("返回", "@back");
    }
    return EXECUTE_RESULT;
  }

  @RequestMapping("/delCoffee")
  public String delCoffee(@RequestParam String coffeeId, HttpServletRequest request) {
    try {
      Coffee coffee = coffeeService.getCoffeeById(coffeeId);
      String picpath = coffee.getCoffeePic();
      File f = new File(request.getServletContext().getRealPath(picpath));
      f.delete();
      String[] picPathes = coffeeService.getCoffeePicPathesByCoffeeId(coffeeId);
      System.out.println(picPathes);
      for (int i = 0; i < picPathes.length; i++) {
        File ff = new File(request.getServletContext().getRealPath(picPathes[i]));
        ff.delete();
      }
      coffeeService.delCoffee(coffeeId);
      this.addMessage("删除咖啡成功");
      this.addRedirURL("返回", getReferUrl());
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      this.addMessage("删除咖啡失败");
      this.addRedirURL("返回", "@back");
    }
    return EXECUTE_RESULT;
  }

  @RequestMapping("/getCoffeePics")
  public String getCoffeePics(@RequestParam(required = false) String cateId, @RequestParam(required = false) String coffeeName,
    @RequestParam(required = false) String startPrice, @RequestParam(required = false) String endPrice, @RequestParam(required = false) String sort,
    Map<String, Object> m) {
    List<Category> cates = this.getServMgr().getCateService().getAllCates();
    m.put("cates", cates);
    Page<Coffee> coffee = coffeeService.getAdminSearchCoffee(cateId, coffeeName, sort);
    m.put("coffee", coffee);
    return "/admin/coffee/coffeePicsList";
  }

  @RequestMapping("/handleCoffeePics")
  public String handleCoffeePics(@RequestParam String coffeeId, Map<String, Coffee> m) {
    Coffee coffee = coffeeService.getCoffeeDetailById(coffeeId);
    m.put("coffee", coffee);
    return "/admin/coffee/handleCoffeePics";
  }

  @RequestMapping("/addCoffeePics")
  public String addCoffeePics(HttpServletRequest request, @RequestParam String coffeeId, @RequestParam MultipartFile[] coffeePicFile) {
    System.out.println(coffeePicFile.length);
    for (int i = 0; i < coffeePicFile.length; i++) {
      System.out.println(coffeePicFile[i].getContentType());
      if (!coffeePicFile[i].isEmpty() && !coffeePicFile[i].getContentType().equals("image/jpeg")
        && !coffeePicFile[i].getContentType().equals("image/png")) {
        this.addMessage("上传图片类型不正确，请上传jpg或png格式图片");
        this.addRedirURL("返回", "@back");
        return EXECUTE_RESULT;
      }
    }
    try {
      String[] coffeepicpaths = new String[5];
      if (coffeePicFile != null && coffeePicFile.length > 0) {
        for (int i = 0; i < coffeePicFile.length; i++) {
          MultipartFile coffeePic = coffeePicFile[i];
          if (!coffeePic.isEmpty()) {
            String oriFilename = coffeePic.getOriginalFilename();
            String extFilename = oriFilename.substring(oriFilename.indexOf("."), oriFilename.length());
            System.out.println("ext:" + extFilename);
            coffeepicpaths[i] = "/images/coffee/pics/" + Calendar.getInstance().getTimeInMillis() + i + extFilename;

            String path = request.getServletContext().getRealPath(coffeepicpaths[i]);
            File file = new File(path);
            coffeePic.transferTo(file);
          }
        }
      }
      coffeeService.addCoffeePics(coffeeId, coffeepicpaths);
      this.addMessage("图片添加成功");
      this.addRedirURL("返回", "/admin/coffee/handleCoffeePics?coffeeId=" + coffeeId);
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      this.addMessage("图片添加失败");
      this.addRedirURL("返回", "@back");
    }
    return EXECUTE_RESULT;
  }

  @RequestMapping("/delCoffeePics")
  public String delCoffeePics(@RequestParam String picId, @RequestParam String coffeeId, HttpServletRequest request) {
    try {
      String picpath = coffeeService.getPicPath(picId);
      File f = new File(request.getServletContext().getRealPath(picpath));
      f.delete();
      coffeeService.delCoffeePics(picId);
      this.addMessage("图片删除成功");
      this.addRedirURL("返回", "/admin/coffee/handleCoffeePics?coffeeId=" + coffeeId);

    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      this.addMessage("图片删除失败");
      this.addRedirURL("返回", "@back");
    }
    return EXECUTE_RESULT;
  }

  @RequestMapping("/delCoffeeByIds")
  public String delCoffeeByIds(@RequestParam String[] coffeeIds, HttpServletRequest request) {
    try {
      for (int i = 0; i < coffeeIds.length; i++) {
        Coffee coffee = coffeeService.getCoffeeById(coffeeIds[i]);
        String picpath = coffee.getCoffeePic();
        File f = new File(request.getServletContext().getRealPath(picpath));
        f.delete();
        String[] picPathes = coffeeService.getCoffeePicPathesByCoffeeId(coffeeIds[i]);
        System.out.println(picPathes);
        for (int j = 0; j < picPathes.length; j++) {
          File ff = new File(request.getServletContext().getRealPath(picPathes[j]));
          ff.delete();
        }
      }
      coffeeService.delCoffeeByIds(coffeeIds);
      this.addMessage("咖啡删除成功");
      this.addRedirURL("返回", getReferUrl());

    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      this.addMessage("咖啡删除失败");
      this.addRedirURL("返回", "@back");
    }
    return EXECUTE_RESULT;
  }

}

package cn.edu.neu.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "servMgr")
public class ServiceManager {
  protected final Log log = LogFactory.getLog(getClass());

  /* 项目�?��到的 Service */
  @Autowired
  private UserService userService;

  @Autowired
  private CateService cateService;

  @Autowired
  private CoffeeService wineService;

  /* Service 的存取方�?*/
  public UserService getUserService() {
    return userService;
  }

  public CoffeeService getWineService() {
    return wineService;
  }

  public CateService getCateService() {

    return cateService;
  }

}

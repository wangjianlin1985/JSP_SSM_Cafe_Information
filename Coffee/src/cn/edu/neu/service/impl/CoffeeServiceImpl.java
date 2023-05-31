package cn.edu.neu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.mapper.CoffeeMapper;
import cn.edu.neu.model.Coffee;
import cn.edu.neu.model.Collection;
import cn.edu.neu.service.CoffeeService;

@Service
@Transactional
public class CoffeeServiceImpl implements CoffeeService {

  @Autowired
  private CoffeeMapper mapper;

  @Override
  public List<Coffee> getNewCoffee() {
    // TODO Auto-generated method stub
    List<Coffee> list = mapper.getNewCoffee();
    System.out.println("######" + list);
    return list;
  }

  @Override
  public List<Coffee> getSaleCoffee() {
    // TODO Auto-generated method stub
    List<Coffee> list = mapper.getSaleCoffee();
    return list;
  }

  @Override

  public Page<Coffee> searchCoffee(String keyword, String sort) {
    // TODO Auto-generated method stub
    Page<Coffee> page = new Page<Coffee>(15);
    Map<String, Object> m = new HashMap<String, Object>();
    m.put("keyword", keyword);
    m.put("sort", sort);
    page.setParams(m);
    List<Coffee> CoffeeList = mapper.findCoffeeByKeyword(page);
    page.setList(CoffeeList);
    return page;
  }

  @Override

  public List<Coffee> getAllCoffee() {
    // TODO Auto-generated method stub
    List<Coffee> list = mapper.getAllCoffee();
    return list;
  }

  @Override
  public Page<Coffee> getCoffeeByCate(String cateId, String sort) {
    // TODO Auto-generated method stub
    Page<Coffee> page = new Page<Coffee>(16);
    Map<String, Object> m = new HashMap();
    m.put("cateId", cateId);
    m.put("sort", sort);
    page.setParams(m);
    List<Coffee> list = mapper.getCoffeeByCate(page);
    page.setList(list);
    return page;
  }

  @Override
  public void addFavorite(String coffeeId, String typId, String cateId,String userId) {
	  Map<String, Object> m = new HashMap<String, Object>() ;
	  m.put("coffeeId", coffeeId);
	  m.put("typId", typId);
	  m.put("cateId", cateId);
	  m.put("userId", userId);
    mapper.addFavorite(m);
   

  }

  @Override
  public Coffee getCoffeeDetailById(String coffeeId) {
    // TODO Auto-generated method stub
    Coffee coffeeDetail = mapper.getCoffeeDetailById(coffeeId);

    return coffeeDetail;
  }

  @Override
  public List<Coffee> getCoffeeByUserId(int userId) {

    List<Coffee> coffee = mapper.findCoffeeByUserId(userId);
    return coffee;
  }

  @Override
  public List<Collection> getCollection(String userId) {
    List<Collection> collection = mapper.findCollectionById(userId);
    return collection;
  }

  @Override
  public Page<Coffee> getAdminSearchCoffee(String cateId, String coffeeName, String sort) {
 
    String[] coffeeNames = null;
    if (coffeeName != null)
      coffeeNames = coffeeName.split(" ");
    Page<Coffee> page = new Page<Coffee>(15);
    Map<String, Object> m = new HashMap<String, Object>();
    m.put("cateId", cateId);
    m.put("coffeeNames", coffeeNames);
    m.put("sort", sort);
    System.out.println("=========="+m);
    page.setParams(m);
    List<Coffee> coffeeList = mapper.findCoffeeBySearchKeyword(page);
    page.setList(coffeeList);
    return page;
  }

  @Override
  public Coffee getCoffeeById(String coffeeId) {
    // TODO Auto-generated method stub
    return mapper.findCoffeeById(coffeeId);
  }

  @Override
  public void updateCoffee(Coffee coffee) {
    // TODO Auto-generated method stub
    mapper.updateCoffee(coffee);
  }

  @Override
  public void addCoffee(Coffee coffee) {
    // TODO Auto-generated method stub
    mapper.saveCoffee(coffee);
  }

  @Override
  public String[] getCoffeePicPathesByCoffeeId(String coffeeId) {
    // TODO Auto-generated method stub
    return mapper.findCoffeePicPahtesByCoffeeId(coffeeId);
  }

  @Override
  public void delCoffee(String coffeeId) {
    // TODO Auto-generated method stub
    //mapper.delCoffeeStock(coffeeId);触发器删除

    mapper.delCoffeePic(coffeeId);
    mapper.delCoffee(coffeeId);
  }

  @Override
  public void addCoffeePics(String coffeeId, String[] coffeepicpaths) {
    // TODO Auto-generated method stub
    Map<String, Object> m = new HashMap<String, Object>();
    for (int i = 0; i < coffeepicpaths.length; i++) {
      if (coffeepicpaths[i] != null && !coffeepicpaths[i].equals("")) {
        m.put("coffeeId", Integer.parseInt(coffeeId));
        m.put("coffeePic", coffeepicpaths[i]);
        mapper.saveCoffeePics(m);
      }
    }

  }

  @Override
  public String getPicPath(String picId) {
    // TODO Auto-generated method stub
    return mapper.findPicPath(picId);
  }

  @Override
  public void delCoffeeByIds(String[] coffeeIds) {
    // TODO Auto-generated method stub
    for (int i = 0; i < coffeeIds.length; i++) {
      mapper.delCoffeePic(coffeeIds[i]);
      mapper.delCoffee(coffeeIds[i]);
    }
  }

  @Override
  public void delCoffeePics(String picId) {
    // TODO Auto-generated method stub
    mapper.delCoffeePicById(picId);
  }


@Override
public String[] getCoffeeIdsByCateId(String cateId) {
	// TODO Auto-generated method stub
	return mapper.findCoffeeIdsByCateId(cateId);
}

}

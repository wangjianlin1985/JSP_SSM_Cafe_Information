package cn.edu.neu.service;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Collection;
import cn.edu.neu.model.Coffee;

public interface CoffeeService {

  public List<Coffee> getNewCoffee();

  public List<Coffee> getSaleCoffee();

  public Page<Coffee> searchCoffee(String keyword, String sort);

  public List<Coffee> getAllCoffee();

  void addFavorite(String coffeeId, String typId, String cateId, String userId);

  Page<Coffee> getCoffeeByCate(String cateId, String sort);

  public Coffee getCoffeeDetailById(String coffeeId);

  public List<Coffee> getCoffeeByUserId(int userId);

  public List<Collection> getCollection(String userId);

  public Page<Coffee> getAdminSearchCoffee(String cateId, String coffeeName, String sort);

  public Coffee getCoffeeById(String coffeeId);

  public void updateCoffee(Coffee coffee);

  public void addCoffee(Coffee coffee);

  public String[] getCoffeePicPathesByCoffeeId(String coffeeId);

  public void delCoffee(String coffeeId);

  public void addCoffeePics(String coffeeId, String[] coffeepicpaths);

  public String getPicPath(String picId);

  public void delCoffeeByIds(String[] coffeeIds);

  public void delCoffeePics(String picId);

public String[] getCoffeeIdsByCateId(String cateId);

}

package cn.edu.neu.mapper;

import java.util.List;
import java.util.Map;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Coffee;
import cn.edu.neu.model.Collection;

public interface CoffeeMapper {

  List<Coffee> getNewCoffee();

  List<Coffee> getSaleCoffee();

  List<Coffee> getAllCoffee();

  List<Coffee> getCoffeeByCate(Page page);

  Coffee getCoffeeDetailById(String coffeeId);

  List<Coffee> findCoffeeByKeyword(Page<Coffee> page);

  void addFavorite(Map m);

  List<Coffee> findCoffeeByUserId(String userId);

  List<Collection> findCollectionById(String userId);

  Coffee findCoffeeById(String coffeeId);

  void updateCoffee(Coffee coffee);

  void saveCoffee(Coffee coffee);

  String[] findCoffeePicPahtesByCoffeeId(String coffeeId);

  void delCoffeePic(String coffeeId);

  void delCoffee(String coffeeId);

  void saveCoffeePics(Map<String, Object> m);

  String findPicPath(String picId);

  void delCoffeePicById(String picId);

  List<Coffee> findCoffeeBySearchKeyword(Page<Coffee> page);

String[] findCoffeeIdsByCateId(String cateId);

List<Coffee> findCoffeeByUserId(int userId);

}

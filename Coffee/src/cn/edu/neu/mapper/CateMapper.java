package cn.edu.neu.mapper;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Category;

public interface CateMapper {

	List<Category> findAll(Page<Category> page);

	void saveCate(Category cate);

	Category findCateById(String cateId);

	List<Integer> findCoffeeIdByCateId(String cateId);

	void delCoffeePic(List<Integer> coffeeIds);

	void delCoffee(String cateId);

	void delCate(String cateId);

	void updateCate(Category cate);

}

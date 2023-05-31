package cn.edu.neu.service;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Category;

public interface CateService {

	List<Category> getAllCates();
	
	Page<Category> getAdminCates();

	void updateCate(Category cate);

	void addCate(Category cate);

	Category getCateById(String cateId);

	void delCate(String cateId);


}

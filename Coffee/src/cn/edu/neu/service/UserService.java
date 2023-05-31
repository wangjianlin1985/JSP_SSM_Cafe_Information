package cn.edu.neu.service;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.User;


public interface UserService {
	
	void save(User user);
	boolean update(User user);
	void delete(String id);
	User findById(int id);

	User checkUser(User user);
	boolean regUser(User user);
	boolean checkUserName(String userName);
	User checkAdmin(User user);
	User getUser(String userName);
	Page<User> getAdminSearchUsers(String userId, String userName);
	User getUserById(String userId);
	void doHandleUser(User user);
	void updateUser(User user);
	void addUser(User user);
	
}

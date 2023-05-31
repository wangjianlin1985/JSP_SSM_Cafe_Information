package cn.edu.neu.mapper;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.User;

public interface UserMapper {
	
	void save(User user);
	boolean update(User user);
	void delete(String user_id);
	User findById(int id);

	User checkUser(User user);
	int regUser(User user);
	int checkUserName(User user);
	User checkAdmin(User user);
	User findUser(String userName);
	List<User> findUserBySearchKeyword(Page<User> page);
	User findUserById(String userId);
	void doHandleUser(User user);
	void updateUser(User user);
	void saveUser(User user);
}

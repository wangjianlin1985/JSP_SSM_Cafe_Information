package cn.edu.neu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.mapper.UserMapper;
import cn.edu.neu.model.User;
import cn.edu.neu.service.UserService;



@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper mapper;


	@Override
	public User checkUser(User user) {
		// TODO Auto-generated method stub
		return mapper.checkUser(user);
	}
	
	@Override
	public boolean regUser(User user) {
		// TODO Auto-generated method stub
		if(mapper.checkUserName(user)==0){
		try{
			mapper.regUser(user);
			return true;
		}
		catch(Exception ex){
			System.out.println(ex);
			return false;
	}}
		else return false;
	}

	@Override
	public boolean checkUserName(String userName) {
		// TODO Auto-generated method stub
		User user=new User();
		user.setUserName(userName);
		if(mapper.checkUserName(user)==0)
		return true;
		else return false;
	}

	@Override
	public User checkAdmin(User user) {
		// TODO Auto-generated method stub
		return mapper.checkAdmin(user);
	}
	@Override
	public User getUser(String userName) {
		// TODO Auto-generated method stub
		return mapper.findUser(userName);
	}

	@Override
	public void save(User user) {
		mapper.save(user);
		
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		return mapper.update(user);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		 mapper.delete(id);
		 
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		User user = mapper.findById(id);
		
		return user;
	}

	  @Override
	  public Page<User> getAdminSearchUsers(String userId, String userName) {
	 
	    String[] userNames = null;
	    if (userName != null)
	      userNames = userName.split(" ");
	    Page<User> page = new Page<User>(15);
	    Map<String, Object> m = new HashMap<String, Object>();
	    m.put("userId", userId);
	    m.put("userNames",userNames);
	    System.out.println("=========="+m);
	    page.setParams(m);
	    List<User> userList = mapper.findUserBySearchKeyword(page);
	    page.setList(userList);
	    return page;
	  }

	@Override
	public User getUserById(String userId) {
		// TODO Auto-generated method stub
		return mapper.findUserById(userId);
	}

	@Override
	public void doHandleUser(User user) {
		// TODO Auto-generated method stub
		mapper.doHandleUser(user);
		
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		mapper.updateUser(user);
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		mapper.saveUser(user);
	}
}

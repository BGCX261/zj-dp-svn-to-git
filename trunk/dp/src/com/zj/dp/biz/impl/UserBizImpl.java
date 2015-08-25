package com.zj.dp.biz.impl;

import java.util.List;

import com.zj.dp.biz.IUserBiz;
import com.zj.dp.dao.UserDao;
import com.zj.dp.dao.impl.UserDaoImpl;
import com.zj.dp.entity.Film;
import com.zj.dp.entity.User;

public class UserBizImpl implements IUserBiz{
	private UserDao userDao=new UserDaoImpl();
	@Override
	public int login(User user) {
		
		userDao.stratSession();
		List<Object> users=userDao.findByProperty(User.class, "username", user.getUsername());
		userDao.closeSession();
		if(users.isEmpty()){
			return 1;
		}else{
			User u=(User)users.get(0);
			if(!u.getPassword().equals(user.getPassword())){
				return 2;
			}
			user.setUserid(u.getUserid());
			user.setMoney(u.getMoney());
			return 0;
		}
	}

	@Override
	public boolean checkRegName(String username) {
		userDao.stratSession();
		List<Object> users=userDao.findByProperty(User.class, "username", username);
		userDao.closeSession();
		if(users.isEmpty()){
			return true;
		}
		return false;
	}

	@Override
	public int reg(User user) {
		userDao.stratSession();
		boolean result=userDao.add(user);
		userDao.closeSession();
		if(result){
			userDao.stratSession();
			List<Object> users=userDao.findByProperty(User.class, "username", user.getUsername());
			userDao.closeSession();
			user=(User)users.get(0);
			return 0;
		}
		return 1;
	}

}

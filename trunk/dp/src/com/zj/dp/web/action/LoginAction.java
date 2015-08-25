package com.zj.dp.web.action;

import com.zj.dp.biz.IUserBiz;
import com.zj.dp.biz.impl.UserBizImpl;
import com.zj.dp.entity.User;

public class LoginAction extends BaseAction{

	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String login(){
		IUserBiz iUserBiz=new UserBizImpl();
		int result=iUserBiz.login(user);
		if(result==0){
			setSessionAttribute("user", user);
			json(true,result+"");
		}else{
			json(false,result+"");
		}
		return null;
	}
}

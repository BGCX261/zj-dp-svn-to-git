package com.zj.dp.web.action;

import com.zj.dp.biz.IUserBiz;
import com.zj.dp.biz.impl.UserBizImpl;
import com.zj.dp.entity.User;

public class RegAction extends BaseAction{

	private User user;
	private String password2;
	IUserBiz userBiz=new UserBizImpl();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String check(){
		/*
		 * 检查用户名是否存在
		 */
		boolean result=userBiz.checkRegName(user.getUsername());
		if(result){
			json(true,"ok");
		}else{
			json(false,"fail");
		}
		return null;
	}
	
	public String reg(){
		/*
		 * 注册处理
		 */
		int result=userBiz.reg(user);
		if(result==0){
			setSessionAttribute("user", user);
			json(true,result+"");
		}else{
			json(false,result+"");
		}
		return null;
	}
}

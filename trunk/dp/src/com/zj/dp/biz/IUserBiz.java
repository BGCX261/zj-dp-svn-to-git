package com.zj.dp.biz;

import com.zj.dp.entity.User;

public interface IUserBiz {
	/**
	 * 登录
	 * @return 0 登录成功  1用户名错误 2密码错误
	 */
	public int login(User user);

	public boolean checkRegName(String username);

	public int reg(User user);
}

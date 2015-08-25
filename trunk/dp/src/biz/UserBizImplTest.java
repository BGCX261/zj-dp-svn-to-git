package test.com.fzc.zj.dp.biz;

import static org.junit.Assert.*;

import org.junit.Test;

import com.zj.dp.biz.IUserBiz;
import com.zj.dp.biz.impl.UserBizImpl;

public class UserBizImplTest {

	@Test
	public void test() {
		IUserBiz iUserBiz=new UserBizImpl();
		System.out.println(iUserBiz.login("fzc", "9125"));
	}
}

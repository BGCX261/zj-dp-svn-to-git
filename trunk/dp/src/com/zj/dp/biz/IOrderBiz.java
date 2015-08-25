package com.zj.dp.biz;

import java.util.List;

import com.zj.dp.biz.impl.OrderInfo;
import com.zj.dp.entity.User;

public interface IOrderBiz {

	List<OrderInfo> getOrders(User user);
	
}

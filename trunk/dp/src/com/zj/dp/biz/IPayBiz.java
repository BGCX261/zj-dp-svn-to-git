package com.zj.dp.biz;

import com.zj.dp.biz.impl.OrderInfo;
import com.zj.dp.entity.User;

public interface IPayBiz {

	public OrderInfo getTickets(int[] ticketId,int ticketType);

	public int pay(User user, OrderInfo orderInfo);

	public boolean checkTicket(int[] ticketId);
}

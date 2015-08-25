package com.zj.dp.biz.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.zj.dp.biz.IPayBiz;
import com.zj.dp.dao.TicketDao;
import com.zj.dp.dao.impl.TicketDaoImpl;
import com.zj.dp.entity.Order;
import com.zj.dp.entity.OrderItem;
import com.zj.dp.entity.Ticket;
import com.zj.dp.entity.User;

public class PayBizImpl implements IPayBiz {
	TicketDao ticketDao = new TicketDaoImpl();

	@Override
	public OrderInfo getTickets(int[] ticketId,int ticketType) {
		OrderInfo orderInfo = new OrderInfo();
		double discount=getDiscount(ticketType);
		ticketDao.stratSession();
		Ticket tk = (Ticket) ticketDao.getById(Ticket.class, ticketId[0]);

		String filmName = tk.getShowTime().getFilm().getFilmname();
		String filmImg = tk.getShowTime().getFilm().getFilmimg();
		float price=(float) Math.floor(tk.getShowTime().getPrice()*discount);
		int count=ticketId.length;
		float totalPrice=price*count;
		Timestamp playTime=tk.getShowTime().getPlaytime();
		String roomName=tk.getShowTime().getRoom().getRoomname();
		
		orderInfo.setFilmName(filmName);
		orderInfo.setFilmImg(filmImg);
		orderInfo.setPrice(price);
		orderInfo.setCount(count);
		orderInfo.setTotalPrice(totalPrice);

		for (int i = 0; i < ticketId.length; i++) {
			Ticket t = (Ticket) ticketDao.getById(Ticket.class, ticketId[i]);
			OrderDetail orderDetail=new OrderDetail(t.getTicketid(), playTime, roomName, t.getSeatInfo().getRowno(), t.getSeatInfo().getColno());
			orderInfo.addDetail(orderDetail);
		}
		ticketDao.closeSession();
		return orderInfo;
	}

	private double getDiscount(int ticketType) {
		if(ticketType==3)return 0.5;
		if(ticketType==2)return 0.6;
		return 1;
	}

	@Override
	public int pay(User user, OrderInfo orderInfo) {
		float price=orderInfo.getPrice();
		float totalmoney = orderInfo.getOrderDetails().size() * price;
		double userMoney = user.getMoney();
		if (userMoney - totalmoney > 0) {
			ticketDao.stratSession();
			// 减去用户余额
			user = (User) ticketDao.getById(User.class, user.getUserid());
			user.setMoney(userMoney - totalmoney);
			// 创建订单
			Order order = new Order();
			order.setUser(user);
			order.setTotalmoney(totalmoney);
			order.setOrdertime(new Timestamp(System.currentTimeMillis()));
			// 创建订单项
			Set<OrderItem> orderItems = new HashSet<OrderItem>();
			for (OrderDetail od : orderInfo.getOrderDetails()) {
				OrderItem orderItem = new OrderItem();
				Ticket ticket = (Ticket) ticketDao.getById(Ticket.class,
						od.getTicketId());
				ticket.setPrice(price);
				ticket.setState(1);
				orderItem.setOrder(order);
				orderItem.setTicket(ticket);
				//System.out.println(orderItem.getTicket());
				orderItems.add(orderItem);
			}
			order.setOrderitems(orderItems);
			ticketDao.add(order);
			ticketDao.closeSession();
			return 0;
		}
		return 1;
	}

	@Override
	public boolean checkTicket(int[] ticketId) {
		ticketDao.stratSession();
		for(int i=0;i<ticketId.length;i++){
			Ticket ticket=(Ticket) ticketDao.getById(Ticket.class, ticketId[i]);
			if(ticket.getState()==1){
				return false;
			}
		}
		ticketDao.closeSession();
		return true;
	}

}

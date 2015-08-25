package com.zj.dp.entity;

public class OrderItem {
	private Integer orderitemid;
	private Order order;
	private Ticket ticket;
	
	public OrderItem(){}
	public OrderItem(Order order,Ticket ticket){
		this.order = order;
		this.ticket = ticket;
	}
	public Integer getOrderitemid() {
		return orderitemid;
	}
	public void setOrderitemid(Integer orderitemid) {
		this.orderitemid = orderitemid;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Ticket getTicket() {
		return ticket;
	}
	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}
}

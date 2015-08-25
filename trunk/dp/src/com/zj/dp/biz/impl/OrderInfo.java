package com.zj.dp.biz.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class OrderInfo {

	private int orderId;
	private String filmName;
	private String filmImg;
	private float price;
	private int count;
	private int ticketType;
	private float totalPrice;
	private Timestamp orderTime;
	private int state;
	private List<OrderDetail> orderDetails=new ArrayList<OrderDetail>();
	
	public OrderInfo(){}
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public String getFilmImg() {
		return filmImg;
	}
	public void setFilmImg(String filmImg) {
		this.filmImg = filmImg;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Timestamp getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Timestamp orderTime) {
		this.orderTime = orderTime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}

	public int getTicketType() {
		return ticketType;
	}

	public void setTicketType(int ticketType) {
		this.ticketType = ticketType;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void addDetail(OrderDetail orderDetail) {
		this.orderDetails.add(orderDetail);
	}
	
}

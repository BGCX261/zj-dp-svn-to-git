package com.zj.dp.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Ticket entity. @author MyEclipse Persistence Tools
 */

public class Ticket implements java.io.Serializable {

	// Fields

	private Integer ticketid;
	private ShowTime showTime;
	private SeatInfo seatInfo;
	private Float price;
	private Integer state;
	private Set orderitems = new HashSet(0);

	// Constructors

	/** default constructor */
	public Ticket() {
	}

	/** full constructor */
	public Ticket(ShowTime showTime, SeatInfo seatInfo, Float price,
			Integer state, Set orderitems) {
		this.showTime = showTime;
		this.seatInfo = seatInfo;
		this.price = price;
		this.state = state;
		this.orderitems = orderitems;
	}

	// Property accessors

	public Integer getTicketid() {
		return this.ticketid;
	}

	public void setTicketid(Integer ticketid) {
		this.ticketid = ticketid;
	}

	public ShowTime getShowTime() {
		return this.showTime;
	}

	public void setShowTime(ShowTime showTime) {
		this.showTime = showTime;
	}

	public SeatInfo getSeatInfo() {
		return this.seatInfo;
	}

	public void setSeatInfo(SeatInfo seatInfo) {
		this.seatInfo = seatInfo;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Set getOrderitems() {
		return orderitems;
	}

	public void setOrderitems(Set orderitems) {
		this.orderitems = orderitems;
	}

	

}
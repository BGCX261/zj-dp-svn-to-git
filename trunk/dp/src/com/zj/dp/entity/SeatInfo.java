package com.zj.dp.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * SeatInfo entity. @author MyEclipse Persistence Tools
 */

public class SeatInfo implements java.io.Serializable {

	// Fields

	private Integer seatid;
	private Room room;
	private String seatname;
	private Integer rowno;
	private Integer colno;
	private Set tickets = new HashSet(0);

	// Constructors

	/** default constructor */
	public SeatInfo() {
	}

	/** full constructor */
	public SeatInfo(Room room, String seatname, Integer rowno, Integer colno,
			Set tickets) {
		this.room = room;
		this.seatname = seatname;
		this.rowno = rowno;
		this.colno = colno;
		this.tickets = tickets;
	}

	// Property accessors

	public Integer getSeatid() {
		return this.seatid;
	}

	public void setSeatid(Integer seatid) {
		this.seatid = seatid;
	}

	public Room getRoom() {
		return this.room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public String getSeatname() {
		return this.seatname;
	}

	public void setSeatname(String seatname) {
		this.seatname = seatname;
	}

	public Integer getRowno() {
		return this.rowno;
	}

	public void setRowno(Integer rowno) {
		this.rowno = rowno;
	}

	public Integer getColno() {
		return this.colno;
	}

	public void setColno(Integer colno) {
		this.colno = colno;
	}

	public Set getTickets() {
		return this.tickets;
	}

	public void setTickets(Set tickets) {
		this.tickets = tickets;
	}

}
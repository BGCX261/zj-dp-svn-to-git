package com.zj.dp.biz.impl;

import java.sql.Timestamp;

public class OrderDetail {

	private int ticketId;
	private Timestamp playTime;
	private String roomName;
	private int col;
	private int row;
	
	public OrderDetail(){}

	public OrderDetail(int ticketId, Timestamp playTime, String roomName,
			int col, int row) {
		this.ticketId = ticketId;
		this.playTime = playTime;
		this.roomName = roomName;
		this.col = col;
		this.row = row;
	}


	public int getTicketId() {
		return ticketId;
	}

	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	public Timestamp getPlayTime() {
		return playTime;
	}

	public void setPlayTime(Timestamp playTime) {
		this.playTime = playTime;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public int getCol() {
		return col;
	}

	public void setCol(int col) {
		this.col = col;
	}

	public int getRow() {
		return row;
	}

	public void setRow(int row) {
		this.row = row;
	}
	
}

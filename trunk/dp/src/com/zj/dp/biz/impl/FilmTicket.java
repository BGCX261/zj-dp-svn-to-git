package com.zj.dp.biz.impl;

import java.sql.Timestamp;

public class FilmTicket {

	private int ticketId;
	private String filmName;
	private String filmImg;
	private String roomName;
	private float price;
	private Timestamp playTime;
	private int row;
	private int col;
	
	public FilmTicket(){}

	
	public int getTicketId() {
		return ticketId;
	}

	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
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


	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Timestamp getPlayTime() {
		return playTime;
	}

	public void setPlayTime(Timestamp playTime) {
		this.playTime = playTime;
	}

	public int getRow() {
		return row;
	}

	public void setRow(int row) {
		this.row = row;
	}

	public int getCol() {
		return col;
	}

	public void setCol(int col) {
		this.col = col;
	}


	@Override
	public String toString() {
		return "FilmTicket [ticketId=" + ticketId + ", filmName=" + filmName
				+ ", filmImg=" + filmImg + ", roomName=" + roomName
				+ ", price=" + price + ", playTime=" + playTime + ", row="
				+ row + ", col=" + col + "]";
	}
	
	
}

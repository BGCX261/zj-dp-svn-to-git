package com.zj.dp.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Room entity. @author MyEclipse Persistence Tools
 */

public class Room implements java.io.Serializable {

	// Fields

	private Integer roomid;
	private String roomname;
	private Set seatInfos = new HashSet(0);
	private Set showTimes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Room() {
	}

	/** full constructor */
	public Room(String roomname, Set seatInfos, Set showTimes) {
		this.roomname = roomname;
		this.seatInfos = seatInfos;
		this.showTimes = showTimes;
	}

	// Property accessors

	public Integer getRoomid() {
		return this.roomid;
	}

	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}

	public String getRoomname() {
		return this.roomname;
	}

	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}

	public Set getSeatInfos() {
		return this.seatInfos;
	}

	public void setSeatInfos(Set seatInfos) {
		this.seatInfos = seatInfos;
	}

	public Set getShowTimes() {
		return this.showTimes;
	}

	public void setShowTimes(Set showTimes) {
		this.showTimes = showTimes;
	}

}
package com.zj.dp.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * ShowTime entity. @author MyEclipse Persistence Tools
 */

public class ShowTime implements java.io.Serializable {

	// Fields

	private Integer changid;
	private Room room;
	private Film film;
	private Timestamp playtime;
	private Float price;
	private Set tickets = new HashSet(0);

	// Constructors

	/** default constructor */
	public ShowTime() {
	}

	/** minimal constructor */
	public ShowTime(Timestamp playtime) {
		this.playtime = playtime;
	}

	/** full constructor */
	public ShowTime(Room room, Film film, Timestamp playtime, Float price,
			Set tickets) {
		this.room = room;
		this.film = film;
		this.playtime = playtime;
		this.price = price;
		this.tickets = tickets;
	}

	// Property accessors

	public Integer getChangid() {
		return this.changid;
	}

	public void setChangid(Integer changid) {
		this.changid = changid;
	}

	public Room getRoom() {
		return this.room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Film getFilm() {
		return this.film;
	}

	public void setFilm(Film film) {
		this.film = film;
	}

	public Timestamp getPlaytime() {
		return this.playtime;
	}

	public void setPlaytime(Timestamp playtime) {
		this.playtime = playtime;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Set getTickets() {
		return this.tickets;
	}

	public void setTickets(Set tickets) {
		this.tickets = tickets;
	}

	@Override
	public String toString() {
		return "ShowTime [changid=" + changid + ", room=" + room.getRoomname() + ", film="
				+ film.getFilmname() + ", playtime=" + playtime + ", price=" + price
				+ ", tickets=" + tickets + "]";
	}
	
}
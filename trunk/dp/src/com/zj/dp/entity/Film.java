package com.zj.dp.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Film entity. @author MyEclipse Persistence Tools
 */

public class Film implements java.io.Serializable {

	// Fields

	private Integer filmid;
	private String filmname;
	private String filmimg;
	private Set showTimes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Film() {
	}

	/** full constructor */
	public Film(String filmname, String filmimg, Set showTimes) {
		this.filmname = filmname;
		this.filmimg = filmimg;
		this.showTimes = showTimes;
	}

	// Property accessors

	public Integer getFilmid() {
		return this.filmid;
	}

	public void setFilmid(Integer filmid) {
		this.filmid = filmid;
	}

	public String getFilmname() {
		return this.filmname;
	}

	public void setFilmname(String filmname) {
		this.filmname = filmname;
	}

	public String getFilmimg() {
		return this.filmimg;
	}

	public void setFilmimg(String filmimg) {
		this.filmimg = filmimg;
	}

	public Set getShowTimes() {
		return this.showTimes;
	}

	public void setShowTimes(Set showTimes) {
		this.showTimes = showTimes;
	}

}
package com.zj.dp.biz;

import java.util.List;

import com.zj.dp.entity.Film;

public interface IFilmBiz {

	/*
     *得到所有的Film 
     */
	public List<Film> findAllFilms();
	/*
     *得到所有的轮播Film 
     */
	public List<Film> carouselFilms();
	/*
     *得到除去轮播的所有的Film 
     */
	public List<Film> residueFilms();
	
}

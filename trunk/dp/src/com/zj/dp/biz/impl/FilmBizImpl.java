package com.zj.dp.biz.impl;

import java.util.ArrayList;
import java.util.List;

import com.zj.dp.biz.IFilmBiz;
import com.zj.dp.dao.impl.FilmDaoImpl;
import com.zj.dp.entity.Film;

public class FilmBizImpl implements IFilmBiz{
	
	
public List<Film> findAllFilms(){
	List<Film> films=new ArrayList<Film>();
	FilmDaoImpl fdi=new FilmDaoImpl();
	fdi.stratSession();
	films=fdi.findAll(Film.class);

	fdi.closeSession();	
	return films;
}

public List<Film> carouselFilms(){
	List<Film> films=findAllFilms();
	List<Film> carouselFilms=new ArrayList<Film>();
	for(int i=0;i<films.size()&&i<3;i++){
		carouselFilms.add(films.get(i));
	}
	return carouselFilms;
}

public List<Film> residueFilms(){
	List<Film> films=findAllFilms();
	List<Film> residueFilms=new ArrayList<Film>();
	for(int i=3;i<films.size();i++){
		residueFilms.add(films.get(i));
	}
	return residueFilms;
	
}
}

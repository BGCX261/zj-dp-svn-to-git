package com.zj.dp.web.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zj.dp.biz.impl.FilmBizImpl;
import com.zj.dp.entity.Film;

public class FilmAction extends BaseAction{

	public String showFilms(){
		FilmBizImpl fbi=new FilmBizImpl();
		List<Film> carousefilms=fbi.carouselFilms();
		List<Film> residuefilms=fbi.residueFilms();
		HttpSession session=this.getSession();
		session.setAttribute("carousefilms", carousefilms);
		session.setAttribute("residuefilms", residuefilms);
		session.setAttribute("passaction", "true");
		HttpServletResponse response=this.getResponse();
		return this.SUCCESS;
		
	}
	
}

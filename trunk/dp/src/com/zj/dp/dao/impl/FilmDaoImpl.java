package com.zj.dp.dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zj.dp.dao.FilmDao;

public class FilmDaoImpl extends BaseDaoImpl implements FilmDao{
	protected Session session;
	protected Transaction tr;
}

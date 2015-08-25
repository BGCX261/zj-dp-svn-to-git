package com.zj.dp.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zj.dp.dao.BaseDao;
import com.zj.dp.util.HibernateSessionFactory;

public class BaseDaoImpl implements BaseDao{
	protected Session session;
	protected Transaction tr;

	@Override
	public void stratSession() {
		session = HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
	}

	@Override
	public void closeSession() {
		if(tr!=null){
			tr.commit();
			tr=null;
		}
		if(this.session != null) {
			session.close();
			session = null;
		}
	}

	@Override
	public boolean add(Object entity) {
		try{
			session.save(entity);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(Object entity) {
		try{
			session.delete(entity);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(Class clazz, Integer id) {
		try{
			Object entity = session.get(clazz, id);
			session.delete(entity);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean update(Object entity) {
		try{
			session.update(entity);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public Object getById(Class clazz, Integer id) {
		Object obj = null;
		try{
			obj = session.get(clazz,id);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return obj;
	}

	@Override
	public List findAll(Class clazz) {
		List list = null;
		try{
			list = session.createQuery("from " + clazz.getName()).list();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return list;
	}

	@Override
	public List findByProperty(Class clazz, String property, Object value) {
		List list = null;
		try{
			Query query = session.createQuery("from " + clazz.getName() + " as model where model."+property + " = ?");
			query.setParameter(0, value);
			list = query.list();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return list;
	}
}

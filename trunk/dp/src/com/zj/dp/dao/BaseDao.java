package com.zj.dp.dao;

import java.util.List;

public interface BaseDao {
	/**
	 * 获取Session对象
	 * 
	 * @return Session session
	 */
	public void stratSession();
	
	/**
	 * 关闭Session对象
	 */
	public void closeSession();

	/**
	 * 增加并持久化对象
	 * 
	 * @param entity
	 * @return boolean true:成功 false:失败
	 */
	public boolean add(Object entity);

	/**
	 * 删除对象
	 * 
	 * @param entity
	 * @return boolean true:成功 false:失败
	 */
	public boolean delete(Object entity);

	/**
	 * 删除对象
	 * 
	 * @param clazz
	 *            对象类型
	 * @param id
	 *            对象ID
	 * @return boolean true:成功 false:失败
	 */
	public boolean delete(Class clazz, Integer id);

	/**
	 * 更新对象
	 * 
	 * @param entity
	 * @return boolean true:成功 false:失败
	 */
	public boolean update(Object entity);

	/**
	 * 获取对象
	 * 
	 * @param clazz
	 *            对象类型
	 * @param id
	 *            对象ID
	 * @return Object 获取到的对象
	 */
	public Object getById(Class clazz, Integer id);

	/**
	 * 获取全部对象
	 * 
	 * @param clazz
	 *            对象类型
	 * @return List 指定类型的全部对象
	 */
	public List findAll(Class clazz);

	/**
	 * 根据属性值查找对象
	 * 
	 * @param clazz
	 *            对象类型
	 * @param property
	 *            属性名称
	 * @param value
	 *            属性值
	 * @return List 获取的指定属性的指定值的对象列表
	 */
	public List findByProperty(Class clazz, String property, Object value);
}

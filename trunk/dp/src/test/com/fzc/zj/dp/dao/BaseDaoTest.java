package test.com.fzc.zj.dp.dao;

import static org.junit.Assert.*;

import org.junit.Test;

import com.zj.dp.dao.BaseDao;
import com.zj.dp.dao.impl.BaseDaoImpl;
import com.zj.dp.entity.Film;

public class BaseDaoTest {

private BaseDao baseDao = new BaseDaoImpl();
	
	@Test
	public void test() {
		baseDao.stratSession();
		
		//getByIdTest();
		//addTest();
		//delete();
		
		baseDao.closeSession();
	}

	private void getByIdTest() {
		Film film = (Film)baseDao.getById(Film.class,9);
		System.out.println(film.toString());
	}
	
	private void addTest() {
		Film film=new Film();
		film.setFilmname("甲方乙方");
		film.setFilmimg("jfyj.jpg");
		baseDao.add(film);
	}
	
	private void delete(){
		baseDao.delete(Film.class, 7);
	}

}

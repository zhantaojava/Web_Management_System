package test;

import java.util.LinkedList;
import java.util.List;

import model.User;
import dao.HibernateDao;

public class Test {

	public static void main(String[] args) {
		
		List list=new LinkedList();
		
		
		
		
		HibernateDao hibernateDao=new HibernateDao();
		list=hibernateDao.searchUser("mingxing");
		
		System.out.println(list.size());
		
		User u=(User) list.get(0);
		System.out.println(u.getPw());
		
		
	}

}

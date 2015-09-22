package test;

import java.util.LinkedList;
import java.util.List;

import model.User;
import model.UserBeanProcess;
import dao.HibernateDao;

public class Test {

	public static void main(String[] args) {

		
		UserBeanProcess ubp=new UserBeanProcess();
		
		HibernateDao hibernateDao=new HibernateDao();
		
		List<User> list = new LinkedList<User>();

		list = hibernateDao.searchUser("df");
		
		User user=new User();
		
		if(!list.isEmpty()){
		user=list.get(0);
		}
		
		
	}

}

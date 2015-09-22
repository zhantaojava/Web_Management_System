package model;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import dao.HibernateDao;


public class UserBeanProcess {
	HibernateDao hibernateDao = new HibernateDao();

	/**
	 * checkUser by username and password
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public boolean CheckUser(String username, String password) {
		boolean b = false;

		List<User> list = new LinkedList<User>();

		list = hibernateDao.searchUser(username);

		User user = new User();

		if (!list.isEmpty()) {
			user = list.get(0);
			if (user.getPw().equals(password)) {
				b = true;
				return b;
			}
		}

		return b;

	}

	public Object AddUser(String username, String password, int age) {
		Object obj = null;
		User user = new User();

		List list = hibernateDao.searchUser(username);
		if (list.isEmpty()) {
			Date date = new Date();

			user.setName(username);
			user.setAge(age);
			user.setPw(password);
			user.setDate(date);

			obj = hibernateDao.save(user);
		} 

		return obj;

	}

}

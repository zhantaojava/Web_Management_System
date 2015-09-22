<%@ page language="java"
	import="java.util.*,java.sql.*,dao.HibernateDao,model.User"
	pageEncoding="US-ASCII"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'loginProcess.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<%
		//receive username & password  
		//complate uservalidation

		String u = request.getParameter("username");
		String p = request.getParameter("pw");

		/* //valida from DB

		//1.loading drvier
		Class.forName("com.mysql.jdbc.Driver");

		//2.get URL
		Connection ct = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/mkyong", "root", "tiger");

		//3.create Statement
		Statement sm = ct.createStatement();

		//4.query
		ResultSet rs = sm
				.executeQuery("select pw from UserValidator where name='"
						+ u + "'");

		if (rs.next()) { //get the username 

			if (rs.getString(1).equals(p)) { //compare the password with the user input password
				//password valid
				response.sendRedirect("wel.jsp?user=" + u);

			} else {
				//password invalid
				String pwerro = "password invalid";
				response.sendRedirect("login.jsp?erro=" + pwerro);
			}
		} else {
			//username invalid    
			String unameerro = "password invalid";
			response.sendRedirect("login.jsp?erro=" + unameerro);
		} */

		//Validation (not hit DB) 

		/* if (u.equals("zhantao") && p.equals("123")) {

			//valid ,then forward to wel.jsp
			response.sendRedirect("wel.jsp?username=" + u);

		} else {
			//invalid
			String erro = "invalid user";
			response.sendRedirect("login.jsp?erro=" + erro);
		} */
	%>


	<%
		HibernateDao hibernateDao = new HibernateDao();
		User user = new User();

		List list = new LinkedList();

		list = hibernateDao.searchUser(u);

		user = (User)list.get(0);

		//validate user excising
		if (list != null) {
			if (user.getPw().equals(p)) {
				//valid ,then forward to wel.jsp
				response.sendRedirect("wel.jsp?username=" + u);
			} else {
				String erro="invalid password";
				response.sendRedirect("login.jsp?erro=" + erro);
			}
			
		}
		else{
			String erro="invalid username";
			response.sendRedirect("login.jsp?erro="+erro);
		
		}
	%>

</body>
</html>

<%@ page language="java"
	import="java.util.*,dao.HibernateDao,model.User"
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

<title>My JSP 'wel.jsp' starting page</title>

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
	<center>
		<font color=red>Login Success </font><br> <br> UserName:<font
			color=red><%=request.getParameter("username")%></font> <br> <br>




		<%
			int pageSize = 3;
			int pageNow = 1; // default 1st Page
			int rowCount = 0;
			int pageCount = 0;

			//process pageNow
			//fetch user expert pagenow

			String s_pageNow = request.getParameter("pageNow");

			if (s_pageNow != null) {
				// pageNow not null
				pageNow = Integer.parseInt(s_pageNow);

			}

			HibernateDao hibernateDao = new HibernateDao();

			pageCount = hibernateDao.SearchPageCount();
		%>

		<br> <br>Search By HQL(beta2.0)<br>
		<table border="1">
			<tr>
				<td>id</td>
				<td>name</td>
				<td>pw</td>
				<td>age</td>
				<td>date</td>
			</tr>
			<%
				
			%>

			<%
				ArrayList al = (ArrayList) hibernateDao.searchPage(pageNow,
						pageSize);
				for (int i = 0; i < al.size(); i++) {
					User user = (User) al.get(i);
			%>
			<tr>
				<td><%=user.getId()%></td>
				<td><%=user.getName()%></td>
				<td><%=user.getPw()%></td>
				<td><%=user.getAge()%></td>
				<td><%=user.getDate()%></td>

				<%
					}
				%>
			
		</table>

		<%
			for (int i = 1; i <= pageCount; i++) {

				out.println("<a href=wel.jsp?pageNow=" + i + ">[" + i + "]</a>");

			}
		%>
		<br> <br>
		<br> <a href="login.jsp">return back login again</a>
	</center>
</body>
</html>

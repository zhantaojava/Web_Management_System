<%@ page language="java"
	import="java.util.*,java.sql.*,model.UserBeanProcess"
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

		
		
		UserBeanProcess ubp=new UserBeanProcess();
		
		if(ubp.CheckUser(u, p)){
		
		response.sendRedirect("wel.jsp?username=" + u);		
		}
		
		else{
			String erro = "invalid user";
			response.sendRedirect("login.jsp?erro=" + erro);
		
		}	
			
			
			
			
			
			
	%>
	


	

</body>
</html>

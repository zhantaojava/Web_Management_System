<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
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

<title>My JSP 'login.jsp' starting page</title>

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
	This is Login register
	<br>
	<center>
		<form action="loginProcess.jsp" method="post">
			UserName:<input type="text" name="username"><br>
			PassWord:<input type="text" name="pw"><br>
			Age:<input type="text" name="age"><br>
			<input type="submit"value="register">
			<input type="reset" value="reset">

		</form>



		<font color=red> <%
 	String erro = request.getParameter("erro");

 	if (erro != null) {

 		out.println(erro);
 	}
 %></font>
	</center>
</body>
</html>

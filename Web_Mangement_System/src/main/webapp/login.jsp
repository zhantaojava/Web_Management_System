<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
  
  <body >
    This is login page <br>
   <center>
    <form action="login" method="post">
    UserName:<input type="text" name="username"><br>
    PassWord:<input type="text" name="pw"><br>
   <br>
    <input type="submit" value="login">
    <input type="reset" value="reset">
    </form>
    
    <form action="register.jsp">
    <input type="button" value="register"></input>
    </form>
    
    
    
    <font color=red>
    <%
    	String erro=request.getParameter("erro");
		
    	if(erro!=null){
    	
    	out.println(erro);
    	}
    %></font>
    </center> 
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.student.bean.Department"%>
<%@page import="com.student.bean.MyClass"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'add.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<s:head />
		<sx:head />

	</head>

	<body>
		<div align="center">
			添加用户信息
			<br>	

			<s:form action="/useraction!login" method="post" name="ddd" id="123"  validate="true">
				<s:textfield name="username" label="用户姓名"></s:textfield>
				<s:password name="pass1" label="密码"></s:password>
				<s:password name="pass2" label="确认密码"></s:password>
		        <td align="right"><s:submit value="登录" theme="simple"></s:submit></td>
		        <td><s:reset value="重置" theme="simple"></s:reset></td>
		
			</s:form>

		</div>
	</body>
</html>

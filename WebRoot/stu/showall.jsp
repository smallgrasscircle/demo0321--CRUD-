<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.student.bean.Department"%>
<%@page import="com.student.bean.MyClass"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
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

		<title>My JSP 'showall.jsp' starting page</title>

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
			<font size="4" color="#000000"><strong> 显示所有学生信息<br>
					<br>
					<a href="/demo0321/stu/add.jsp"> 添加学生信息</a>
				<br> <br> </strong> </font>
		</div>
		<table width="1080" border="1" height="185">
			<tbody>
				<tr>
					<td>
						<strong>&nbsp;序号</strong>
					</td>
					<td>
						<strong>&nbsp;姓名</strong>
					</td>
					<td>
						<strong>&nbsp;学号</strong>
					</td>
					<td>
						<strong>&nbsp;性别</strong>
					</td>
					<td>
						<strong>&nbsp;系部</strong>
					</td>
					<td>
						<strong>班级 <br> </strong>
					</td>
					<td>
						<strong>&nbsp;兴趣</strong>
					</td>
					<td>
						<strong>出生日期 <br> </strong>
					</td>
					<td>
						<strong>备注 <br> </strong>
					</td>
					<td>
						<strong>&nbsp;操作</strong>
					</td>
				</tr>

				<s:iterator value="#session.stulist" status="status" var="stu">
					<tr>
						<td>
							&nbsp;
							<s:property value="#status.count" />
						</td>
						<td>
							&nbsp;
							<s:property value="sname" />
						</td>
						<td>
							&nbsp;
							<s:property value="sno" />
							
						<td>
							&nbsp;
							<s:property value="sex" />
						</td>
						<td>
							&nbsp;
							<s:property value="department" />
						</td>
						<td>
							&nbsp;
							<s:property value="myclass" />
						</td>
						<td>
							&nbsp;
							<s:property value="instesting" />
						</td>
						<td>
							&nbsp;
							<s:property value="birthday" />
						</td>
						<td>
							&nbsp;
							<s:property value="beizhu" />
						</td>
						<td>
							
							<font size="3"><a href='/demo0321/stuaction!delete.action?stu.sid=<s:property value="sid"/>'>删除 </a><a href='/demo0321/stuaction!preupdate.action?stu.sid=<s:property value="sid"/>'>修改</a></font>
							
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</body>
</html>

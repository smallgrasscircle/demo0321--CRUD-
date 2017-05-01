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
			<s:text name="add.welcome"></s:text>
			<br>

			<%
      //使用脚本  预处理处理
      //1、先处理好 级联数据的每一个实体对象  一级和二级
      //1.1 一级   系部  
      Department dep1=new Department();
      dep1.setDid(1);
      dep1.setDepartname("软件学院");
      
      Department dep2=new Department();
      dep2.setDid(2);
      dep2.setDepartname("电子电气");
      
      Department dep3=new Department();
      dep3.setDid(3);
      dep3.setDepartname("机电学院");
      
      //1.2 二级  班级
      
      MyClass c11=new MyClass();
      c11.setCid(1);
      c11.setClassname("软件151");
      
      MyClass c12=new MyClass();
      c12.setCid(2);
      c12.setClassname("软件152");
      
      MyClass c13=new MyClass();
      c13.setCid(3);
      c13.setClassname("软件153");
      
      MyClass c14=new MyClass();
      c14.setCid(4);
      c14.setClassname("软件154");
      
      MyClass c21=new MyClass();
      c21.setCid(5);
      c21.setClassname("电气151");
       MyClass c22=new MyClass();
      c22.setCid(6);
      c22.setClassname("电气152");
       MyClass c23=new MyClass();
      c23.setCid(7);
      c23.setClassname("电气153");
      
      MyClass c31=new MyClass();
      c31.setCid(8);
      c31.setClassname("机电151");
      
      MyClass c32=new MyClass();
      c32.setCid(9);
      c32.setClassname("机电152");
      
      MyClass c33=new MyClass();
      c33.setCid(8);
      c33.setClassname("机电153");
      
      //2. 二级级联内容成为list
      ArrayList mylist1=new ArrayList();   //加二级级联内容
      mylist1.add(c11);
      mylist1.add(c12);
      mylist1.add(c13);
      mylist1.add(c14);
      
      ArrayList mylist2=new ArrayList();   //加二级级联内容
      mylist2.add(c21);
      mylist2.add(c22);
      mylist2.add(c23);
      
     ArrayList mylist3=new ArrayList();   //加二级级联内容
      mylist3.add(c31);
      mylist3.add(c32);
      mylist3.add(c33);
      //3. 将相应的二级级联list捆绑dao对应的一级选项   Map
      Map map=new HashMap();
      
      map.put(dep1,mylist1);   //将软件的4个班级级联dao软件学院对象
      map.put(dep2,mylist2); 
      map.put(dep3,mylist3); 
      
      //4. 将数据保存session、request中
      request.setAttribute("depban",map);
      
      
    %>

			<s:form action="/stuaction!add" method="post" name="ddd" id="123">
				<s:textfield name="stu.sname" label="%{getText('add.sname')}"></s:textfield>
				
				<s:textfield name="stu.sname" key="add.sname"></s:textfield>
				<s:textfield name="stu.sno" label="学生学号"></s:textfield>
				<s:radio list="{'男','女'}" name="stu.sex" label="性别"></s:radio>
				<s:password name="stu.password" label="密码"></s:password>
				<br />  系部与班级要级联 <br />
				
				   <s:doubleselect label="请选择对应的系部和班级" name="stu.department" id="yiji"
                    list="#request.depban.keySet()" listKey="did" listValue="departname"
                    doubleName="stu.myclass" doubleList="#request.depban.get(top)"
                    doubleListKey="cid" doubleListValue="classname" doubleId="banji" ></s:doubleselect>
                    
				
                <s:select list="{'江苏','浙江','安徽','上海','山东','福建'}" label="所在省份" name="stu.shengfen"></s:select>
                <s:checkboxlist list="{'旅游','运动','阅读','乐器','电游','健身'}" label="兴趣爱好" name="stu.instesting"></s:checkboxlist>
                <sx:datetimepicker label="出生日期" name="stu.birthday" displayFormat="yyyy年MM月dd日"></sx:datetimepicker>
		        <s:textarea label="其他信息" name="stu.beizhu" cols="30" rows="5"></s:textarea>
		        <td align="right"><s:submit value="添加" theme="simple"></s:submit></td>
		        <td><s:reset value="重置" theme="simple"></s:reset></td>
		
			</s:form>

		</div>
	</body>
</html>

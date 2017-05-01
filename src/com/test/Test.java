package com.test;

import com.db.DBCon;
import com.student.bean.Student;
import com.student.dao.StudentDAO;
import com.student.dao.StudentDAOImp;

public class Test {
	public static void main(String[] args) {
		DBCon db=new DBCon();
		db.getConnection();
		
		
		StudentDAO sdi=new StudentDAOImp();
		
		System.out.println(sdi.listall().size());
		boolean result=sdi.delete(5);
		if(result)
		{
			System.out.println("删除成功");
		}
		
		Student stu=sdi.selectBySid(3);
		System.out.println(stu.getSname());
		//测试 对象  真实从表单输入
//		Student stu=new Student();
//		stu.setSname("zzz");
//		stu.setSno("1437264");
//		stu.setSex("男");
//		stu.setBeizhu("ffffffffffff");
//		stu.setBirthday("1998-1-1");
//		stu.setDepartment("软件学院");
//		stu.setMyclass("软件151");
//		stu.setInstesting("篮球;足球;羽毛球");
//		
//		stu.setPassword("123");
//		stu.setShengfen("浙江");
//		
//		boolean result=sdi.insert(stu);
//		if(result)
//		{
//			System.out.println("dao中插入方法测试成功");
//		}
	}

}

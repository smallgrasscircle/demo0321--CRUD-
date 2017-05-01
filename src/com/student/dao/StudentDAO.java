package com.student.dao;

import com.student.bean.Student;

public interface StudentDAO {
	//插入一个学生信息  。测试成功后才能交给Action
	public boolean insert(Student stu);
	public java.util.List<Student> listall();
	public boolean delete(int sid);
	public Student selectBySid(int sid);
	public boolean update(Student stu);

}

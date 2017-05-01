package com.student.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.db.DBCon;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.student.bean.Student;

public class StudentDAOImp implements StudentDAO {
	//1个类+4个对象
	DBCon db=new DBCon();
	Connection con=null;
	Statement stmt=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	public boolean insert(Student stu) {
		boolean flag=false;
		System.out.println("正在执行StudentDAOImp中insert方法");
		con=db.getConnection();
		if(con==null)
		{
			System.out.println("数据库连接有问题");
			return flag;
		}
		//stmt pstmt
		try {
			String sql="insert into tb_student(sname,sno,sex,password,department,myclass,shengfen,instesting,birthday,beizhu) values(?,?,?,?,?,?,?,?,?,?) ";
			pstmt=(PreparedStatement) con.prepareStatement(sql);
	        //？ 赋值
			pstmt.setString(1, stu.getSname());
			pstmt.setString(2, stu.getSno());
			pstmt.setString(3, stu.getSex());
			pstmt.setString(4, stu.getPassword());
			pstmt.setString(5, stu.getDepartment());
			pstmt.setString(6, stu.getMyclass());
			pstmt.setString(7, stu.getShengfen());
			pstmt.setString(8, stu.getInstesting());
		    pstmt.setDate(9, stu.getBirthday());
			pstmt.setString(10, stu.getBeizhu());
			int state=pstmt.executeUpdate();
			if(state>0)
			{
				System.out.println("dao中插入成功");
				flag=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//mysql  id
		return flag;
	}
	public List<Student> listall() {
		List list=new java.util.ArrayList();
		System.out.println("正在执行StudentDAOImp中listall方法");
		con=db.getConnection();
		if(con==null)
		{
			System.out.println("数据库连接有问题");
			return list;
		}
		//stmt pstmt
		try {
			stmt=(Statement) con.createStatement();
			String sql="select * from tb_student";     //Hibernater
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				System.out.println("新找到一行数据");
				Student stu=new Student();
				stu.setSid(rs.getInt(1));
				stu.setSname(rs.getString(2));
				stu.setSno(rs.getString(3));
				stu.setSex(rs.getString(4));
				stu.setPassword(rs.getString(5));
				stu.setDepartment(rs.getString(6));
				stu.setMyclass(rs.getString(7));
				stu.setShengfen(rs.getString(8));
				stu.setInstesting(rs.getString(9));
				stu.setBirthday(rs.getDate(10));
				stu.setBeizhu(rs.getString(11));
				
				list.add(stu);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public boolean delete(int sid) {
		boolean flag=false;
		System.out.println("正在执行StudentDAOImp中delete方法");
		con=db.getConnection();
		if(con==null)
		{
			System.out.println("数据库连接有问题");
			return flag;
		}
		//stmt pstmt
		try {
			String sql="delete from tb_student where sid=?";
			pstmt=(PreparedStatement) con.prepareStatement(sql);
			pstmt.setInt(1,sid);
			int state=pstmt.executeUpdate();
			if(state>0)
			{
				System.out.println("dao删除成功");
				flag=true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
	public Student selectBySid(int sid) {
		Student stu=null;
		System.out.println("正在执行StudentDAOImp中selectBySid方法");
		con=db.getConnection();
		if(con==null)
		{
			System.out.println("数据库连接有问题");
			return stu;
		}
		//stmt pstmt
		try {
			String sql="select * from tb_student where sid=?";
			pstmt=(PreparedStatement) con.prepareStatement(sql);
			pstmt.setInt(1,sid);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				System.out.println("数据库存在需要修改的对象");
				stu=new Student();
				stu.setSid(rs.getInt(1));    //这个数据最重要  Oid
				stu.setSname(rs.getString(2));
				stu.setSno(rs.getString(3));
				stu.setSex(rs.getString(4));
				stu.setPassword(rs.getString(5));
				stu.setDepartment(rs.getString(6));
				stu.setMyclass(rs.getString(7));
				stu.setShengfen(rs.getString(8));
				stu.setInstesting(rs.getString(9));
				stu.setBirthday(rs.getDate(10));
				stu.setBeizhu(rs.getString(11));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stu;
	}
	public boolean update(Student stu) {
		boolean flag=false;
		System.out.println("正在执行StudentDAOImp中update方法");
		con=db.getConnection();
		if(con==null)
		{
			System.out.println("数据库连接有问题");
			return flag;
		}
		//stmt pstmt
		try {
			String sql="update tb_student set sname=?,sno=?,sex=?,password=?,department=?,myclass=?,shengfen=?,instesting=?,birthday=?,beizhu=? where sid=?";
			  // 11个？
			pstmt=(PreparedStatement) con.prepareStatement(sql);
			//？ 赋值
			pstmt.setString(1, stu.getSname());
			pstmt.setString(2, stu.getSno());
			pstmt.setString(3, stu.getSex());
			pstmt.setString(4, stu.getPassword());
			pstmt.setString(5, stu.getDepartment());
			pstmt.setString(6, stu.getMyclass());
			pstmt.setString(7, stu.getShengfen());
			pstmt.setString(8, stu.getInstesting());
		    pstmt.setDate(9, stu.getBirthday());
			pstmt.setString(10, stu.getBeizhu());
			pstmt.setInt(11,stu.getSid());    //这个最重要
			int state=pstmt.executeUpdate();
			if(state>0){
				System.out.println("dao中修改成功");
				flag=true;    //主方法测试
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

}

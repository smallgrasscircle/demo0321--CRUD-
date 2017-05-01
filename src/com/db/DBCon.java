package com.db;


import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;



/**
 * @author zlh
 * ������ȡ��ݿ����Ӷ���
 */

public class DBCon {
	Connection con=null;
	public Connection getConnection(){
		try {
			//1������MySQL ʹ�ô�������
			Class.forName("com.mysql.jdbc.Driver");
			con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/db_bookstore?useUnicode=true&characterEncoding=utf-8","root","123");
			
			
			//2�� ����SQL 2008 ��ʹ��JTDS����	
			//Class.forName("net.sourceforge.jtds.jdbc.Driver");
			//con= DriverManager.getConnection("jdbc:jtds:sqlserver://localhost:1433/db_stuinfo","sa", "123");
			
			System.out.println("数据库连接成功");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库连接失败");
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库连接失败");
			e.printStackTrace();
		}
	
	return con;
	   
		
		
	}
	

}

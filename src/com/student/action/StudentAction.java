package com.student.action;

import com.opensymphony.xwork2.ActionSupport;
import com.student.bean.Student;
import com.student.dao.StudentDAOImp;
import com.opensymphony.xwork2.ActionContext;

public class StudentAction extends ActionSupport {
	private int sid; // 对象唯一标识符 key
	private Student stu;
	// 代码优化，crud都要与数据库进行交互
	StudentDAOImp sdi = null;

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

	public String add() throws Exception {
		System.out.println("正在执行Action中add方法");
		System.out.println(this.getText("add.welcome"));
		// 调用数据访问层对象， 并根据返回值 映射向不同的字符串（逻辑试图）
		sdi = new StudentDAOImp();
		boolean result = sdi.insert(this.getStu()); // this.getStu()
		// 自省机制，用属性的属性驱动
		if (result) {
			System.out.println("action中插入成功");
			return this.listall(); // showall
		} else {
			System.out.println("action中插入不成功");
			return "input"; // showall
		}

	}

	//
	public String listall() throws Exception {
		System.out.println("正在执行Action中listall方法");
		sdi = new StudentDAOImp();
		java.util.List<Student> list = sdi.listall();
		if (list.size() > 0) {
			// 推入到session
			ActionContext.getContext().getSession().put("stulist", list);
			return "showall";

		} else {
			return "input"; // 需要添加学生 转到添加学生页面
		}
	}

	public String delete() throws Exception {
		System.out.println("正在执行Action中delete方法");
		sdi = new StudentDAOImp();
		boolean result = sdi.delete(this.getStu().getSid());
		if (result) {
			System.out.println("action中删除成功");
			return this.listall();
		} else {
			return "error";
		}
	}
	//预修改   根据sid获取需要修改的对象   
	public String preupdate() throws Exception {
		System.out.println("正在执行Action中preupdate方法");
		sdi = new StudentDAOImp();
		Student updatestu=sdi.selectBySid(this.getStu().getSid());     //测试成功
		if(updatestu!=null)
		{
			System.out.println("action中需要修改的对象存在");
			//保存到session中
			ActionContext.getContext().getSession().put("updatestu", updatestu);
			return "update";   //转向修改页面
		}else{
			System.out.println("action中需要修改的对象不存在");
			return "error";
		}
	}
	//修改
	public String update() throws Exception {
		System.out.println("正在执行Action中update方法");
		sdi = new StudentDAOImp();
		boolean result=sdi.update(this.getStu());    //stu  sid  主要看update.jsp  隐藏表单stu.sid
		if(result)
		{
			System.out.println("action修改成功");
			return this.listall();
		}else{
			System.out.println("action修改不成功");
			return "error";
		}
		
		
	}
    //实现手段校验
	//1.继承ActionSupport，重写validate方法
	//2.业务方法返回一定要有  返回  “input”
//	@Override
//	public void validate() {
//		//1 输入的学生名不能为空，长度必须在5~13个之间,必须有字母和数字;
//		//1.1 获取输入的信息  stu.sname   getStu().getSname
//		String name=this.getStu().getSname();
//		if(name==null||name.equals(""))
//		{
//			//1.2 提示不能为空
//			this.addFieldError("stu.sname", "学生姓名不能为空");
//		}
//		if(name!=null&&(name.length()<5||name.length()>13))
//		{
//			//1.2 提示
//			this.addFieldError("stu.sname", "学生姓名长度必须在5~13个之间");
//		}
//	}
	//针对部分业务方法进行校验 （add和修改 表单输入）
	//1 validateXxx方法
	//2 xxx方法中一定要有  input字符串
//	public void validateAdd() {
//		//1 输入的学生名不能为空，长度必须在5~13个之间,必须有字母和数字;
//		//1.1 获取输入的信息  stu.sname   getStu().getSname
//		String name=this.getStu().getSname();
//		if(name==null||name.equals(""))
//		{
//			//1.2 提示不能为空
//			this.addFieldError("stu.sname", "学生姓名不能为空");
//		}
//		if(name!=null&&(name.length()<5||name.length()>13))
//		{
//			//1.2 提示
//			this.addFieldError("stu.sname", "学生姓名长度必须在5~13个之间");
//		}
//	}
	
}

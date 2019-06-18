package com.bwie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 学生管理模块
 * @author 赵振洋
 *
 */
@Controller
@RequestMapping("/student")
public class StudentController {
	
	/**
	 * 查询课程成绩信息列表
	 * @return
	 */
	public String queryCourseList(){
		return "";
	}
	
	
	/**
	 * 课程成绩导入
	 * @return
	 */
	public String importCourse(){
		return "";
	}
	
	/**
	 * 课程信息下载
	 */
	public void downLoadCourse(){
		
	}
	
	

}

package com.newlec.javaweb.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlec.javaweb.dao.MemberRoleDao;
import com.newlec.javaweb.dao.jdbc.JdbcMemberRoleDao;


@WebServlet("/member/home")
public class HomeController extends HttpServlet {
	
   @Override
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
	   HttpSession session = request.getSession();
	   
	   Object _memberId = session.getAttribute("id");
	   
	   if(_memberId == null)
		   response.sendRedirect("login");
	   else {
		   String memberId = _memberId.toString();
		   MemberRoleDao dao = new JdbcMemberRoleDao();
		   String roleId = dao.getDefaultRole(memberId);
		   
		   System.out.println(memberId);
		   System.out.println(roleId);
		   
		   
		   if(roleId.equals("ROLE_TEACHER"))
			   response.sendRedirect("");
		   else if(roleId.equals("ROLE_ADMIN"))
			   response.sendRedirect("../admin/index");
		   else if(roleId.equals("ROLE_STUDENT"))
			   response.sendRedirect("../student/index");
		   else
			   response.sendRedirect("../index");
	   }	
		   
   }

}
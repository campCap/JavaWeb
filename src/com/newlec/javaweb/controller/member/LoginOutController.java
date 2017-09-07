package com.newlec.javaweb.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlec.javaweb.dao.MemberDao;
import com.newlec.javaweb.dao.jdbc.JdbcMemberDao;
import com.newlec.javaweb.entity.Member;

@WebServlet("/member/loginout")
public class LoginOutController extends HttpServlet {
	
   @Override
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
	   HttpSession session = request.getSession();// 저장되어있는 세션들을 가져와서
	   session.invalidate();//세션을 모두 비움
	   
      response.sendRedirect("../index");
   }

}
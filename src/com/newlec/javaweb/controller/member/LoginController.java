package com.newlec.javaweb.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlec.javaweb.dao.MemberDao;
import com.newlec.javaweb.dao.jdbc.JdbcMemberDao;
import com.newlec.javaweb.entity.Member;

@WebServlet("/member/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		MemberDao memberdao = new JdbcMemberDao();
		Member member = memberdao.get(id);
		
		if(member ==null)
			response.sendRedirect("?error=1");
		else if(!member.getPwd().equals(pwd))
			response.sendRedirect("?error=1");
		else
			response.sendRedirect("../index");
	}

}

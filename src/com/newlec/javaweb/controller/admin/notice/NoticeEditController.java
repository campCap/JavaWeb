package com.newlec.javaweb.controller.admin.notice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlec.javaweb.dao.NoticeDao;
import com.newlec.javaweb.dao.jdbc.JdbcNoticeDao;
import com.newlec.javaweb.entity.Notice;

@WebServlet("/admin/notice/edit")
public class NoticeEditController extends HttpServlet{
   
	@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Notice n = null;
	      
	      NoticeDao dao = new JdbcNoticeDao();
	      
	      int result = dao.update(id, title, content);

	      
	      
	     response.sendRedirect("detail?id="+id);
		
		}
	
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String id = request.getParameter("id");

      NoticeDao noticedao = new JdbcNoticeDao();
      
      request.setAttribute("d", noticedao.getEdit(id));
      
      //response.sendRedirect("notice.jsp");
      request.getRequestDispatcher("/WEB-INF/views/admin/notice/edit.jsp").forward(request, response);
   }

}
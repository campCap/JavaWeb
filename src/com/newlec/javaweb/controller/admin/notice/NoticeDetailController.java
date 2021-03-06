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

@WebServlet("/admin/notice/detail")
public class NoticeDetailController extends HttpServlet{
   
   @Override
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String id = request.getParameter("id");

      NoticeDao dao = new JdbcNoticeDao();
      
      request.setAttribute("d", dao.get(id));
      
      //response.sendRedirect("notice.jsp");
      request.getRequestDispatcher("/WEB-INF/views/admin/notice/detail.jsp").forward(request, response);
   }

}
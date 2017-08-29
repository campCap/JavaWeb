package com.newlec.javaweb.controller.customer;

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

import com.newlecture.javaweb.entity.Notice;

@WebServlet("/customer/notice-edit")
public class NoticeEditController extends HttpServlet{
   
	@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Notice n = null;
	      
	      String url = "jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
	      String sql = "update Notice set title = ?, content =?  where id = ?";

	      
	      try {
	         Class.forName("com.mysql.jdbc.Driver");

	         // ���� / ����
	         Connection con = DriverManager.getConnection(url, "sist", "cclass");

	         // ����
	         //Statement st = con.createStatement();
	         PreparedStatement st = con.prepareStatement(sql);
	         st.setString(1, title);
	         st.setString(2, content);
	         st.setString(3, id);
	         
	         // �����̽� ��� �������� �����
	         int result = st.executeUpdate();
	         

	         // Model 
	         
	            
	         st.close();
	         con.close();
	         
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }

	      
	      
	     response.sendRedirect("notice-detail?id="+id);
		
		}
	
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String id = request.getParameter("id");


      Notice n = null;
      
      String url = "jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
      String sql = "SELECT *FROM Notice WHERE id = ?";

      
      try {
         Class.forName("com.mysql.jdbc.Driver");

         // ���� / ����
         Connection con = DriverManager.getConnection(url, "sist", "cclass");

         // ����
         //Statement st = con.createStatement();
         PreparedStatement st = con.prepareStatement(sql);
         st.setString(1, id);
         
         // ��� ��������
         ResultSet rs = st.executeQuery();

         // Model 
         
         
         // ��� ����ϱ�
         if (rs.next()) {
            n = new Notice();
            n.setId(rs.getString("id"));
            n.setTitle(rs.getString("title"));
            n.setWriterId(rs.getString("writerid"));
            n.setRegDate(rs.getDate("regDate"));
            n.setHit(rs.getInt("hit"));
            n.setContent(rs.getString("content"));
            //..
            
         }
         rs.close();
         st.close();
         con.close();
         
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      }

      
      
      request.setAttribute("d", n);
      
      //response.sendRedirect("notice.jsp");
      request.getRequestDispatcher("/WEB-INF/views/customer/notice/edit.jsp").forward(request, response);
   }

}
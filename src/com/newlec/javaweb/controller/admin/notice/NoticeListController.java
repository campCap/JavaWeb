package com.newlec.javaweb.controller.admin.notice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlec.javaweb.dao.MemberRoleDao;
import com.newlec.javaweb.dao.NoticeDao;
import com.newlec.javaweb.dao.jdbc.JdbcMemberRoleDao;
import com.newlec.javaweb.dao.jdbc.JdbcNoticeDao;
import com.newlec.javaweb.entity.Notice;

@WebServlet("/admin/notice/list")
public class NoticeListController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		   
		Object _memberId = session.getAttribute("id");
		   
		if(_memberId == null)
			response.sendRedirect("login?returnURL=../admin/notice/list");
		else {
			   String memberId = _memberId.toString();
			   MemberRoleDao dao = new JdbcMemberRoleDao();
			   boolean role = dao.hasRole(memberId, "ROLE_ADMIN");
		}
		
		String _query = request.getParameter("query");
		String _page = request.getParameter("p");
		
		String query="";
		int page = 1;
		
		if(_query !=null && !_query.equals(""))
			query= _query;
		
		if(_page !=null && !_page.equals(""))
			page=Integer.parseInt(_page);
		
		/*다오에 취해버린다*/
		NoticeDao noticeDao = new JdbcNoticeDao();
		
		
		
	request.setAttribute("list", noticeDao.getList(page,query));
	request.setAttribute("count", noticeDao.getCount());
	
	request.getRequestDispatcher("/WEB-INF/views/admin/notice/list.jsp").forward(request, response);
	}

}

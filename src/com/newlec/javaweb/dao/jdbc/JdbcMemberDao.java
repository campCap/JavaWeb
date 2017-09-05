package com.newlec.javaweb.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.newlec.javaweb.dao.MemberDao;
import com.newlec.javaweb.entity.Member;
import com.newlec.javaweb.entity.Notice;
import com.newlec.javaweb.entity.NoticeView;

public class JdbcMemberDao implements MemberDao {
	
	
	@Override
	public Member get(String id) {
		String url = "jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
	     String sql = "SELECT *FROM Member WHERE id = ?";
	     Member m = null;
	      
	      try {
	         Class.forName("com.mysql.jdbc.Driver");

	         // 연결 / 인증
	         Connection con = DriverManager.getConnection(url, "sist", "cclass");

	         // 실행
	         //Statement st = con.createStatement();
	         PreparedStatement st = con.prepareStatement(sql);
	         st.setString(1, id);
	         
	         // 결과 가져오기
	         ResultSet rs = st.executeQuery();

	         // Model 
	         
	         
	         // 결과 사용하기
	         if (rs.next()) {
	            m = new Member(
	            		rs.getString("id"),
	            		rs.getString("pwd"),
	            		rs.getString("name"),
	            		rs.getString("gender"),
	            		rs.getString("birthday"),
	            		rs.getString("phone"),
	            		rs.getString("email")
	            		);
	            
	         }
	         rs.close();
	         st.close();
	         con.close();
	         
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
		
		return  m;
	}

	@Override
	public int insert(String id, String pwd, String name, String phone, String email) {
		// TODO Auto-generated method stub
		return insert(new Member(id, pwd, name,null,null,phone,email));
	}

	@Override
	public int insert(Member member) {
	      int result=0;
	      String url = "jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
	      String sql = "insert into Member(id, pwd, moon, name, gender, birthday, phone) values(?,?,?,?,?,?,?)" ;

	      
	      try {
	         Class.forName("com.mysql.jdbc.Driver");

	         // 연결 / 인증
	         Connection con = DriverManager.getConnection(url, "sist", "cclass");

	         // 실행
	         //Statement st = con.createStatement();
	         PreparedStatement st = con.prepareStatement(sql);
	         st.setString(1, member.getId());
	         st.setString(2, member.getPwd());
	         st.setString(3, member.getMoon());
	         st.setString(4, member.getName());
	         st.setString(5, member.getGender());
	         st.setString(6, member.getBirthday());
	         st.setString(7, member.getPhone());
	         
	         // 업데이스 결과 가져오기 몇개인지
	         result = st.executeUpdate();
	         

	         // Model 
	         
	            
	         st.close();
	         con.close();
	         
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }

	     return result;
		}

	


}

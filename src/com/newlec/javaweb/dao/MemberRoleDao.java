package com.newlec.javaweb.dao;

public interface MemberRoleDao {

	String getDefaultRole(String memberId);

	boolean hasRole(String memberId, String string);

}

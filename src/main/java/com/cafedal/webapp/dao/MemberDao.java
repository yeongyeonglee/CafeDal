package com.cafedal.webapp.dao;


import java.util.Date;
import java.util.List;

import com.cafedal.webapp.entity.Member;
import com.cafedal.webapp.entity.MemberCafe;
import com.cafedal.webapp.entity.NoticeFile;



public interface MemberDao  {

	int insert(String id, String name, String pwd, String mail, String birth, String role, String cafes);
	
	int MemberInsert(String id, String name, String pwd, String mail, String birth, String role, String cafes);

	int insert(Member member);
	
	int MemberInsert(Member member);
	
	Member get(String id);
	
	Member login(String id, String pwd);
	
	int sameCheckId(Member member) throws Exception;
	
	boolean checkPw(String id, String pwd);
	
	int update(Member member);
	
    Member getc(String id);

    List<Member> getUseList(String id);
    
    List<Member> getUseListRole(String id);

	Member getib(String id);

	int delete(String id, String name, String pwd, String mail, String birth, String role, String cafes);

	int delete(Member member);

	int delete(String id);

}


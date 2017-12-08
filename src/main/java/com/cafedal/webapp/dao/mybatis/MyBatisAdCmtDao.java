package com.cafedal.webapp.dao.mybatis;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.cafedal.webapp.dao.AdCmtDao;
import com.cafedal.webapp.dao.MemberCafeDao;
import com.cafedal.webapp.dao.MemberDao;
import com.cafedal.webapp.dao.MypageDao;
import com.cafedal.webapp.dao.NoticeFileDao;
import com.cafedal.webapp.dao.UseNoticeDao;
import com.cafedal.webapp.entity.AdCmtView;
import com.cafedal.webapp.entity.DcInfo;
import com.cafedal.webapp.entity.Member;
import com.cafedal.webapp.entity.MemberCafe;
import com.cafedal.webapp.entity.Mypage;

public class MyBatisAdCmtDao implements AdCmtDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<AdCmtView> getUseList(String id) {
		AdCmtDao adCmtDao = sqlSession.getMapper(AdCmtDao.class);
		List<AdCmtView> list = adCmtDao.getUseList(id);

        return list;
	}

}

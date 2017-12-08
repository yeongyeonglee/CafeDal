package com.cafedal.webapp.dao;

import java.util.List;

import com.cafedal.webapp.entity.AdCmtView;



public interface AdCmtDao  {

	List<AdCmtView> getUseList(String id);

}


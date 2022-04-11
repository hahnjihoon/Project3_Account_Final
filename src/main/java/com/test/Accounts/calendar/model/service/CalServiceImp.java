package com.test.Accounts.calendar.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.Accounts.calendar.model.dao.ICalDao;
import com.test.Accounts.calendar.model.vo.CalDto;
import com.test.Accounts.camera.model.vo.Camera;

@Service
public class CalServiceImp implements ICalService{
	
	@Autowired
	private ICalDao calDao;
	
	@Override
	public boolean insertCal(CalDto dto) {
		return calDao.insertCal(dto);
	}

	@Override
	public List<CalDto> calBoardList(String id, String yyyyMMdd) {
		return calDao.calBoardList(id, yyyyMMdd);
	}

	@Override
	public CalDto calDetail(int seq) {
		return calDao.calDetail(seq);
	}

	@Override
	public boolean calUpdate(CalDto dto) {
		return calDao.calUpdate(dto);
	}

	@Override
	public boolean calMuldel(String[] seq) {
		return calDao.calMuldel(seq);
	}

	@Override
	public int calCount(String id, String yyyyMMdd) {
		return calDao.calCount(id, yyyyMMdd);
	}

	@Override
	public List<CalDto> calViewList(String id, String yyyyMM) {
		return calDao.calViewList(id, yyyyMM);
	}
	
	
	@Override
    public ArrayList<Camera> camera1(String userid) {
      return calDao.camera1(userid);
    }

}

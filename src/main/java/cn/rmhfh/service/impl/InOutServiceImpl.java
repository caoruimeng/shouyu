package cn.rmhfh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.rmhfh.dao.InOrOutDetailDao;
import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.OutDetail;
import cn.rmhfh.service.InOutService;

@Service
public class InOutServiceImpl implements InOutService{

	@Autowired
	private InOrOutDetailDao inOutDao;
	
	@Override
	public List<InDetail> getInDetailList() {
		return inOutDao.getAllIn();
	}

	@Override
	public List<OutDetail> getOutDetailList() {
		return inOutDao.getAllOut();
	}

}

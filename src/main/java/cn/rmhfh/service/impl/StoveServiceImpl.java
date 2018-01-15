package cn.rmhfh.service.impl;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.rmhfh.dao.InOrOutDetailDao;
import cn.rmhfh.dao.StoveDao;
import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.Stove;
import cn.rmhfh.service.StoveService;

@Service
public class StoveServiceImpl implements StoveService {

	@Autowired
	private StoveDao stoveDao;
	
	@Autowired
	private InOrOutDetailDao inOutDao;
	@Override
	public List<Stove> getAllStove() {
		return stoveDao.findAllStove();
	}
	@Override
	public void add(Stove stove) {
		stoveDao.addStove(stove);
	}
	@Override
	public void inRep(String stoveId, Integer num) {
		stoveDao.inRep(num, stoveId);
		InDetail inDetail=new InDetail();
		inDetail.setDescription("退货入库");
		inDetail.setStoveId(stoveId);
		inDetail.setTime(LocalDateTime.now());
		inDetail.setNum(num);
		inOutDao.inDetail(inDetail);
	}

	
}

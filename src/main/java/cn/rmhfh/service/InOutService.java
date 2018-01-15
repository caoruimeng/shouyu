package cn.rmhfh.service;

import java.util.List;

import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.OutDetail;

public interface InOutService {

	List<InDetail> getInDetailList();
	
	List<OutDetail> getOutDetailList();
}

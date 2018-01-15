package cn.rmhfh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.OutDetail;

public interface InOrOutDetailDao {

	void inDetail(@Param("in") InDetail inDetail);
	
	void outDetail(@Param("out") OutDetail outDetail);
	
	List<InDetail> getAllIn();
	
	List<OutDetail> getAllOut();
}

package cn.rmhfh.service;

import java.util.List;

import cn.rmhfh.entity.Stove;

public interface StoveService {

	List<Stove> getAllStove();
	
	void add(Stove stove);
	
	void inRep(String stoveId,Integer num);
}

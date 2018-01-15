package cn.rmhfh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.rmhfh.entity.Material;

public interface MaterialDao {
	
	int addMaterial(@Param("m") Material material); 
	
	List<Material> findAll();
	
	int updateNum(@Param("number") double number,@Param("id") int materialId);
	
	Material findOne(@Param("id") int id);
	
	int updatePrice(@Param("id") int id);
}

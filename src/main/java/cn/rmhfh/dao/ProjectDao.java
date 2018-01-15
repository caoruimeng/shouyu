package cn.rmhfh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.rmhfh.domain.ProjectBO;
import cn.rmhfh.entity.Project;

public interface ProjectDao {

	List<ProjectBO> getAll();
	
	void addPro(@Param("pro") Project project);
	
	Project findOne(@Param("proId") int proId);
	
	void getStove(@Param("proId") int proId,@Param("num") int num);
}

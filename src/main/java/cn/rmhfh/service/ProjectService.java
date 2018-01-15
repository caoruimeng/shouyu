package cn.rmhfh.service;

import java.util.List;

import cn.rmhfh.domain.ProjectBO;
import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.Project;

public interface ProjectService {

	List<ProjectBO> getAll();
	
	void addPro(Project project);
	
	Project findOne(int proId);
	
	void inRep(InDetail inDetail,int proId);
}

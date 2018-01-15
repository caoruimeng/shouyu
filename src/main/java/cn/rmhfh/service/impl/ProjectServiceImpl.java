package cn.rmhfh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.rmhfh.dao.InOrOutDetailDao;
import cn.rmhfh.dao.ProjectDao;
import cn.rmhfh.dao.StoveDao;
import cn.rmhfh.domain.ProjectBO;
import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.Project;
import cn.rmhfh.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	private ProjectDao projectDao;
	
	@Autowired
	private StoveDao stoveDao;
	
	@Autowired
	private InOrOutDetailDao inOutDao;
	
	@Override
	public List<ProjectBO> getAll() {
		
		return projectDao.getAll();
	}

	@Override
	public void addPro(Project project) {
		projectDao.addPro(project);
	}

	@Override
	public Project findOne(int proId) {
		
		return projectDao.findOne(proId);
	}

	@Override
	public void inRep(InDetail inDetail, int proId) {
		projectDao.getStove(proId, inDetail.getNum());
		stoveDao.inRep(inDetail.getNum(), inDetail.getStoveId());
		inOutDao.inDetail(inDetail);
	}

}

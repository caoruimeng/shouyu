package cn.rmhfh.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import cn.rmhfh.domain.ProjectBO;
import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.Project;
import cn.rmhfh.service.ProjectService;
import cn.rmhfh.service.StoveService;
import cn.rmhfh.utils.RMResult;

@RestController
@RequestMapping("/admin/project")
public class ProjectController {

	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private StoveService stoveService;
	
	@RequestMapping("/getAll")
	public List<ProjectBO> getAll(){
		
		return projectService.getAll();
	}
	
	@RequestMapping("")
	public ModelAndView getProPage(){
		ModelAndView mv=new ModelAndView("project");
		mv.addObject("stoveList",stoveService.getAllStove());
		return mv;
	}
	
	@RequestMapping("/addPro")
	public RMResult addPro(Project project){
		project.setBeginDate(LocalDate.now());
		project.setGetNum(0);
		projectService.addPro(project);
		return RMResult.ok();
	}
	
	@RequestMapping("/inRep")
	public RMResult inRep(InDetail inDetail,int proId){
		Project project = projectService.findOne(proId);
		if(project.getNum()<inDetail.getNum()+project.getGetNum()){
			return RMResult.build(203, "入库数量不能大于总数");
		}
		inDetail.setTime(LocalDateTime.now());
		inDetail.setDescription("工程:"+proId+" 入库");
		projectService.inRep(inDetail, proId);
		return RMResult.ok();
	}
	
}

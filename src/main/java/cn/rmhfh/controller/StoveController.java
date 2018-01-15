package cn.rmhfh.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.rmhfh.entity.Stove;
import cn.rmhfh.entity.Type;
import cn.rmhfh.service.StoveService;
import cn.rmhfh.service.TypeService;
import cn.rmhfh.utils.CommonUtils;
import cn.rmhfh.utils.RMResult;

@Controller
@RequestMapping("/admin/stove")
public class StoveController {

	@Autowired
	private StoveService stoveService;
	
	@Autowired
	private TypeService typeService;
	
	@RequestMapping("/getAll")
	@ResponseBody
	public List<Stove> getAllStove(){
	
		return stoveService.getAllStove();
	}
	
	@RequestMapping("/add")
	public ModelAndView addPage(){
		ModelAndView mv=new ModelAndView("stove_add");
		List<Type> typeList=typeService.getAll();
		mv.addObject(typeList);
		return mv;
	}
	
	@RequestMapping("/detail")
	public String detailPage(){
		return "stove_detail";
	}
	
	@RequestMapping("/addStove")
	public String addStove(Stove stove){
		stove.setStoveId(CommonUtils.getUUID());
		stove.setNumber(0);
		stoveService.add(stove);
		return "stove_detail";
	}
	
	@RequestMapping("/getStoveMap")
	@ResponseBody
	public Map<String,Stove> getStoveMap(){
		List<Stove> list=getAllStove();
		Map<String,Stove> map=new HashMap<String, Stove>();
		list.forEach(s->map.put(s.getStoveId(), s));
		return map;
	}
	
	@RequestMapping("/inRep")
	@ResponseBody
	public RMResult inRep(@RequestParam("stoveId") String stoveId,@RequestParam("num") Integer num){
		stoveService.inRep(stoveId, num);
		return RMResult.ok();
	}
	
	
}

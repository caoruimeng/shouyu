package cn.rmhfh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.rmhfh.entity.InDetail;
import cn.rmhfh.entity.OutDetail;
import cn.rmhfh.service.InOutService;

@Controller
@RequestMapping("/admin/inout")
public class InOutController {
	
	@Autowired
	private InOutService inOutService;
	
	@RequestMapping("/in")
	public String inPage(){
		return "in_detail";
	}
	
	@RequestMapping("/out")
	public String outPage(){
		return "out_detail";
	}
	
	@RequestMapping("/getInDetail")
	@ResponseBody
	public List<InDetail> getInDetailList(){
		return inOutService.getInDetailList();
	}
	
	@RequestMapping("/getOutDetail")
	@ResponseBody
	public List<OutDetail> getOutDetailList(){
		return inOutService.getOutDetailList();
	}
}

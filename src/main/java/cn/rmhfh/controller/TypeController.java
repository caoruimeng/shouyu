package cn.rmhfh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.rmhfh.entity.Type;
import cn.rmhfh.service.TypeService;

@RestController
@RequestMapping("/admin/type")
public class TypeController {

	@Autowired
	private TypeService typeService;
	
	@RequestMapping("/getAll")
	public List<Type> getAllType(){
		
		return typeService.getAll();
	}
}

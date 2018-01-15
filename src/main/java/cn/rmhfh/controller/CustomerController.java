package cn.rmhfh.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.rmhfh.entity.Customer;
import cn.rmhfh.service.CustomerService;
import cn.rmhfh.utils.CommonUtils;
import cn.rmhfh.utils.RMResult;

@Controller
@RequestMapping("/admin/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("")
	public String customerPage(){
		return "customer";
	}
	
	@RequestMapping("/getAll")
	@ResponseBody
	public List<Customer> getAllCustomer(){
		return customerService.getAll();
	}
	
	@RequestMapping("/findOne")
	@ResponseBody
	public Customer findOne(@RequestParam("customerId") String customerId){
		
		return customerService.findOne(customerId);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public RMResult addCustomer(Customer customer){
		customer.setCustomerId(CommonUtils.getUUID());
		customerService.addCustomer(customer);
		return RMResult.ok();
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public RMResult updateCustomer(Customer customer){
		Customer c = customerService.findOne(customer.getCustomerId());
		if(c==null)
			return RMResult.build(404, "未找到此用户");
		
		customerService.updateCustomer(customer);
		return RMResult.ok();
	}
	
}

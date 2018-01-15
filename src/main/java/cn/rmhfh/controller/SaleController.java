package cn.rmhfh.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.rmhfh.domain.SaleDetailDTO;
import cn.rmhfh.domain.SaleDetailStoveBO;
import cn.rmhfh.entity.Sale;
import cn.rmhfh.service.CustomerService;
import cn.rmhfh.service.SaleService;
import cn.rmhfh.utils.CommonUtils;
import cn.rmhfh.utils.RMResult;


@Controller
@RequestMapping("/admin/sale")
public class SaleController {

	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private SaleService saleService;
	
	@RequestMapping("/add")
	public ModelAndView salePage(){
		ModelAndView mv=new ModelAndView("sale_add");
		mv.addObject("customerList", customerService.getAll());
		return mv;
	}
	
	@RequestMapping("/detail")
	public String detailPage(){
		return "sale_detail";
	}
	
	@RequestMapping("/fahuo")
	public String fahuo(Sale sale,String localTime,SaleDetailDTO saleDetailDTO){		
		LocalDate dt = LocalDate.parse(localTime);
		sale.setSaleId(CommonUtils.getUUID());
		sale.setSalesman("销售");
		sale.setTime(dt);
		sale.setGetMoney(0f);
		saleService.addSale(sale, saleDetailDTO);
		return "sale_detail";
	}
	
	@RequestMapping("/getAll")
	@ResponseBody
	public List<Sale> getAll(){
		return saleService.getAll();
	}
	
	@RequestMapping("/{saleId}/stove")
	@ResponseBody
	public List<SaleDetailStoveBO> getStoveBO(@PathVariable("saleId") String saleId){
		return saleService.getStoveBySaleId(saleId);
	}
	
	@RequestMapping("/income")
	@ResponseBody
	public RMResult income(@RequestParam("saleId") String saleId,@RequestParam("money") Float money){
		Sale sale=saleService.getOne(saleId);
		if(sale.getGetMoney()+money>sale.getTotalMoney()){
			return RMResult.build(203, "收款不能大于总金额");
		}
		
		saleService.updateMoney(saleId, money);
		
		return RMResult.ok();
	}
	
}

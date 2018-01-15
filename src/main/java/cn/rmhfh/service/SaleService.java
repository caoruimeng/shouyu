package cn.rmhfh.service;

import java.util.List;

import cn.rmhfh.domain.SaleDetailDTO;
import cn.rmhfh.domain.SaleDetailStoveBO;
import cn.rmhfh.entity.Sale;

public interface SaleService {

	void addSale(Sale sale,SaleDetailDTO saleDetailDTO);
	
	List<Sale> getAll();
	
	List<SaleDetailStoveBO> getStoveBySaleId(String saleId);
	
	void updateMoney(String saleId,Float money);
	
	Sale getOne(String saleId);
}

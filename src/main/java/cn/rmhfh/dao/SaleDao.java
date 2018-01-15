package cn.rmhfh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.rmhfh.domain.SaleDetailStoveBO;
import cn.rmhfh.entity.DetailSale;
import cn.rmhfh.entity.Sale;

public interface SaleDao {

	void addSale(@Param("sale") Sale sale);
	
	List<Sale> getAll();
	
	void addSaleDetail(@Param("detail") List<DetailSale> DetailSale);
	
	List<SaleDetailStoveBO> getStoveBySaleId(@Param("saleId") String saleId);
	
	void updateMoney(@Param("saleId")String saleId,@Param("money") Float money);
	
	Sale getOne(@Param("saleId") String saleId);
}

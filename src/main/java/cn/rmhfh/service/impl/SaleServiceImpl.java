package cn.rmhfh.service.impl;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.rmhfh.dao.InOrOutDetailDao;
import cn.rmhfh.dao.SaleDao;
import cn.rmhfh.dao.StoveDao;
import cn.rmhfh.domain.SaleDetailDTO;
import cn.rmhfh.domain.SaleDetailStoveBO;
import cn.rmhfh.entity.DetailSale;
import cn.rmhfh.entity.OutDetail;
import cn.rmhfh.entity.Sale;
import cn.rmhfh.service.SaleService;

@Service
public class SaleServiceImpl implements SaleService{

	@Autowired
	private StoveDao stoveDao;
	
	@Autowired
	private SaleDao saleDao;
	
	@Autowired
	private InOrOutDetailDao inOutDao;
	
	@Override
	public void addSale(Sale sale, SaleDetailDTO saleDetailDTO) {
		saleDao.addSale(sale);
		List<String> stoveIdList=saleDetailDTO.getStoveId();
		List<Integer> numList=saleDetailDTO.getStoveNum();
		
		List<DetailSale> detail=new ArrayList<DetailSale>();
		for(int i=0;i<stoveIdList.size();i++){
			stoveDao.outRep(numList.get(i), stoveIdList.get(i));	
			detail.add(new DetailSale(sale.getSaleId(), stoveIdList.get(i), numList.get(i)));
			//TODO:明细	
			OutDetail outDetail=new OutDetail();
			outDetail.setDescription(sale.getSaleId()+":销售出库");
			outDetail.setNum(numList.get(i));
			outDetail.setStoveId(stoveIdList.get(i));
			outDetail.setTime(LocalDateTime.now());
			inOutDao.outDetail(outDetail);
		}
		saleDao.addSaleDetail(detail);
		
	}
	@Override
	public List<Sale> getAll() {
		
		return saleDao.getAll();
	}
	@Override
	public List<SaleDetailStoveBO> getStoveBySaleId(String saleId) {
		return saleDao.getStoveBySaleId(saleId);
	}
	@Override
	public void updateMoney(String saleId, Float money) {
		saleDao.updateMoney(saleId, money);
	}
	@Override
	public Sale getOne(String saleId) {
		return saleDao.getOne(saleId);
	}

}

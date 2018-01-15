package cn.rmhfh.entity;

import java.time.LocalDate;

public class Sale {

	private String saleId;
	private String salesman;
	private String customer;
	private Float totalMoney;//总价
	private Float freight; //运费
	private Float getMoney;//收款
	private LocalDate time;
	private Float discount;
	private int status;
	
	
	public Float getDiscount() {
		return discount;
	}
	public void setDiscount(Float discount) {
		this.discount = discount;
	}
	public LocalDate getTime() {
		return time;
	}
	public void setTime(LocalDate time) {
		this.time = time;
	}
	public String getSaleId() {
		return saleId;
	}
	public void setSaleId(String saleId) {
		this.saleId = saleId;
	}
	public String getSalesman() {
		return salesman;
	}
	public void setSalesman(String salesman) {
		this.salesman = salesman;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public Float getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(Float totalMoney) {
		this.totalMoney = totalMoney;
	}
	public Float getFreight() {
		return freight;
	}
	public void setFreight(Float freight) {
		this.freight = freight;
	}
	public Float getGetMoney() {
		return getMoney;
	}
	public void setGetMoney(Float getMoney) {
		this.getMoney = getMoney;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Sale [saleId=" + saleId + ", salesman=" + salesman + ", customer=" + customer + ", totalMoney="
				+ totalMoney + ", freight=" + freight + ", getMoney=" + getMoney + ", time=" + time + ", status="
				+ status + "]";
	}
	
	
	
}

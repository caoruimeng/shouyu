package cn.rmhfh.entity;

import java.time.LocalDateTime;

/**
 * �˵�
 * <p>Title:Bill</p>
 * <p>Description:</p>
 * @author crm
 * 2017��8��1��
 */
public class Bill {

	private String billId;
	private String description;
	private LocalDateTime time;
	private Float money;
	private int status;
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getBillId() {
		return billId;
	}
	public void setBillId(String billId) {
		this.billId = billId;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDateTime getTime() {
		return time;
	}
	public void setTime(LocalDateTime time) {
		this.time = time;
	}
	public Float getMoney() {
		return money;
	}
	public void setMoney(Float money) {
		this.money = money;
	}
	
	
	
}

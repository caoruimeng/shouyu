package cn.rmhfh.domain;

import java.time.LocalDate;

public class ProjectBO {
	private int proId;
	private String stoveId;
	public String getStoveId() {
		return stoveId;
	}
	public void setStoveId(String stoveId) {
		this.stoveId = stoveId;
	}
	private String model;
	private String type;
	private int num;
	private int getNum;
	private LocalDate beginDate;
	private LocalDate endDate;
	private int status;
	
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getGetNum() {
		return getNum;
	}
	public void setGetNum(int getNum) {
		this.getNum = getNum;
	}
	public LocalDate getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(LocalDate beginDate) {
		this.beginDate = beginDate;
	}
	public LocalDate getEndDate() {
		return endDate;
	}
	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
}

package cn.rmhfh.entity;

import java.time.LocalDate;

/**
 * 工程
 * <p>Title:Project</p>
 * <p>Description:</p>
 * @author crm
 * 2017年8月1日
 */
public class Project {

	private int proId;
	private String stoveId;
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
	public String getStoveId() {
		return stoveId;
	}
	public void setStoveId(String stoveId) {
		this.stoveId = stoveId;
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

package cn.rmhfh.domain;

import java.util.List;

public class SaleDetailDTO {

	private List<String> stoveId;
	private List<Integer> stoveNum;
	public List<String> getStoveId() {
		return stoveId;
	}
	public void setStoveId(List<String> stoveId) {
		this.stoveId = stoveId;
	}
	public List<Integer> getStoveNum() {
		return stoveNum;
	}
	public void setStoveNum(List<Integer> stoveNum) {
		this.stoveNum = stoveNum;
	}
	
	
}

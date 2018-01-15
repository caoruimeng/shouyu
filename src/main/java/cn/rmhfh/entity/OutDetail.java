package cn.rmhfh.entity;

import java.time.LocalDateTime;

/**
 * ������ϸ
 * <p>Title:OutDetail</p>
 * <p>Description:</p>
 * @author crm
 * 2017��8��1��
 */
public class OutDetail {

	private int outId;
	private String stoveId;
	private LocalDateTime time;
	private int num;
	private String description;
	private String type;
	private String model;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getOutId() {
		return outId;
	}
	public void setOutId(int outId) {
		this.outId = outId;
	}
	public String getStoveId() {
		return stoveId;
	}
	public void setStoveId(String stoveId) {
		this.stoveId = stoveId;
	}
	public LocalDateTime getTime() {
		return time;
	}
	public void setTime(LocalDateTime time) {
		this.time = time;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}

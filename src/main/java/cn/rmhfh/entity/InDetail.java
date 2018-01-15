package cn.rmhfh.entity;

import java.time.LocalDateTime;

/**
 * �����ϸ
 * <p>Title:InDetail</p>
 * <p>Description:</p>
 * @author crm
 * 2017��8��1��
 */
public class InDetail {

	private int inId;
	private LocalDateTime time;
	private String stoveId;
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
	public int getInId() {
		return inId;
	}
	public void setInId(int inId) {
		this.inId = inId;
	}
	public LocalDateTime getTime() {
		return time;
	}
	public void setTime(LocalDateTime time) {
		this.time = time;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}

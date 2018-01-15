package cn.rmhfh.entity;

/**
 * 原材料类
 * <p>Title:Material</p>
 * <p>Description:</p>
 * @author crm
 * 2017年8月1日
 */

public class Material {
	private int materialId;
	private String name;
	private String unit;
	private double number;
	private float price;
	private String description;
	
	
	public double getNumber() {
		return number;
	}
	public void setNumber(double number) {
		this.number = number;
	}
	public int getMaterialId() {
		return materialId;
	}
	public void setMaterialId(int materialId) {
		this.materialId = materialId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}

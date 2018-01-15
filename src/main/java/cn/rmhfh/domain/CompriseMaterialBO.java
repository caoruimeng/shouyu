package cn.rmhfh.domain;

public class CompriseMaterialBO {

	private int cmId;
	private String stoveId;
	private int materialId;
	private String name;
	private float price;
	private double number;
	private double total;
	
	public int getCmId() {
		return cmId;
	}
	public void setCmId(int cmId) {
		this.cmId = cmId;
	}
	public String getStoveId() {
		return stoveId;
	}
	public void setStoveId(String stoveId) {
		this.stoveId = stoveId;
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
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public double getNumber() {
		return number;
	}
	public void setNumber(double number) {
		this.number = number;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
	
}

package cn.rmhfh.entity;

/**
 * ��¯
 * <p>Title:Stove</p>
 * <p>Description:</p>
 * @author crm
 * 2017��8��1��
 */
public class Stove {

	private String stoveId;
	private String model; 
	private String type;  
	private Integer number;
	private String description;
	private Float productionCost;
	private Float sellPrice;
	
	public String getStoveId() {
		return stoveId;
	}
	public void setStoveId(String stoveId) {
		this.stoveId = stoveId;
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
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getProductionCost() {
		return productionCost;
	}
	public void setProductionCost(Float productionCost) {
		this.productionCost = productionCost;
	}
	public Float getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(Float sellPrice) {
		this.sellPrice = sellPrice;
	}
	
	
}

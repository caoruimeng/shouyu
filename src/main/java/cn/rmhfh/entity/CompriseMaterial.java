package cn.rmhfh.entity;

/**
 * ����
 * <p>Title:CompriseMaterial</p>
 * <p>Description:</p>
 * @author crm
 * 2017��8��1��
 */
public class CompriseMaterial {

	private int cmId;
	private String stoveId;
	private int materialId;
	private double number;
	
	public double getNumber() {
		return number;
	}
	public void setNumber(double number) {
		this.number = number;
	}
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
	
}

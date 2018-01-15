package cn.rmhfh.entity;

/**
 * �����嵥
 * <p>Title:DetailSale</p>
 * <p>Description:</p>
 * @author crm
 * 2017��8��1��
 */
public class DetailSale {

	private int detailId;
	private String saleId;
	private String stoveId;
	private int num;

	
	public DetailSale() {
		super();
	}
	public DetailSale(String saleId, String stoveId, int num) {
		super();
		this.saleId = saleId;
		this.stoveId = stoveId;
		this.num = num;
	}
	public int getDetailId() {
		return detailId;
	}
	public void setDetailId(int detailId) {
		this.detailId = detailId;
	}
	public String getSaleId() {
		return saleId;
	}
	public void setSaleId(String saleId) {
		this.saleId = saleId;
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
	
}

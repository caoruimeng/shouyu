package cn.rmhfh.entity;

/**
 * 
 * <p>Title:Customer</p>
 * <p>Description:</p>
 * @author crm
 * 2017年8月7日
 */
public class Customer {
	private String customerId;
	private String name;
	private String address;
	private String description;
	
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}

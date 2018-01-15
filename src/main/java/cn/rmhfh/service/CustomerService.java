package cn.rmhfh.service;

import java.util.List;

import cn.rmhfh.entity.Customer;

public interface CustomerService {

	List<Customer> getAll();
	
	Customer findOne(String customerId);
	
	void addCustomer(Customer customer);
	
	void updateCustomer(Customer customer);
	
	
}

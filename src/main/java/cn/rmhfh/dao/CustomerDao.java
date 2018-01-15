package cn.rmhfh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.rmhfh.entity.Customer;

public interface CustomerDao {

	List<Customer> getAll();
	
	Customer findOne(@Param("customerId") String customerId);
	
	void addCustomer(@Param("c") Customer customer);
	
	void updateCustomer(@Param("c") Customer customer);
}

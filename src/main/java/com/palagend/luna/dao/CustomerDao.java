package com.palagend.luna.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.palagend.luna.po.Customer;

public interface CustomerDao extends JpaRepository<Customer, String>{

	Customer findByTvn(String tvn);

}

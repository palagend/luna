package com.palagend.luna.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.palagend.luna.po.PrimaryProduct;

public interface PrimaryProductDao extends
		JpaRepository<PrimaryProduct, Integer> {
	
}

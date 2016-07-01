package com.palagend.luna.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.palagend.luna.po.CommissionSchema;

public interface CSDao extends JpaRepository<CommissionSchema, Integer> {
	
}

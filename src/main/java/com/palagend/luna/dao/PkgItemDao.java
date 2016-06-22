package com.palagend.luna.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.palagend.luna.po.PkgItem;

public interface PkgItemDao extends JpaRepository<PkgItem, Integer>{
	
}

package com.palagend.luna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.palagend.luna.dao.CustomerDao;
import com.palagend.luna.po.Customer;

@Controller
@RequestMapping("customer")
public class CustomerController {
	@Autowired
	CustomerDao cdao;
	@RequestMapping("find-customer")
	@ResponseBody
	public Customer findCustomer(String tvn){
		return cdao.findByTvn(tvn);
	}
}

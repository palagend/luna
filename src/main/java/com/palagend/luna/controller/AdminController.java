package com.palagend.luna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.palagend.luna.bean.Resp;
import com.palagend.luna.dao.CSDao;
import com.palagend.luna.po.CommissionSchema;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	CSDao csdao;

	@RequestMapping("/home")
	public String toHome() {
		return "Home";
	}

	@RequestMapping("/commission-schema")
	@ResponseBody
	public Resp saveCommissionSchema(CommissionSchema cs) {
		if (csdao.save(cs) instanceof CommissionSchema)
			return new Resp("200","保存成功!");
		else
			return new Resp("500","保存失败!");
	}

}

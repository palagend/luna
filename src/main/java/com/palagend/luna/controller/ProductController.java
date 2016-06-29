package com.palagend.luna.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.palagend.luna.bean.MyJavaBean;
import com.palagend.luna.dao.PkgItemDao;
import com.palagend.luna.dao.PrimaryProductDao;
import com.palagend.luna.po.PkgItem;
import com.palagend.luna.po.PrimaryProduct;

@RequestMapping("/product")
@Controller
public class ProductController {
	@Autowired
	private PrimaryProductDao ppdao;
	@Autowired
	private PkgItemDao piDao;

	@RequestMapping("/to-pub-product")
	public String toPubProduct() {
		return "OnShelf";
	}

	@RequestMapping("/on-shelf")
	@ResponseBody
	public String parserUploadFile3(MultipartFile file, PrimaryProduct pp , MyJavaBean bean) {
		if(StringUtils.isEmpty(file.getOriginalFilename())){
			return "no-file";
		}
		String realDir = "E:/workspace2/hncatv_distribution_member/WebRoot/images/products/";
		String filePath = realDir + pp.getCode()+".jpg";
		pp.setImgUrl("/hd/images/products/" + pp.getCode() + ".jpg");
		List<Integer> pkgIds = bean.getPkgIds();
		List<PkgItem> list = new ArrayList<PkgItem>();
		for (int id: pkgIds) {
			list.add(piDao.findOne(id));
		}
		pp.setPkgItems(list);
		try {
			file.transferTo(new File(filePath));
			ppdao.save(pp);
			return "success";
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return "failure";
	}

	@RequestMapping("to-product-detail")
	public String toPdtDetail(HttpServletRequest req, Integer id) {
		req.setAttribute("product", ppdao.findOne(id));
		return "ProductDetail";
	}

}

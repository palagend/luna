package com.palagend.luna.po;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "t_primary_product")
public class PrimaryProduct extends BaseEntity {
	private static final long serialVersionUID = 1L;
	private String code;
	private String name;
	private String notice;
	/**
	 * 单位为分
	 */
	private Integer price;
	private String imgUrl;
	private String rank;
	private List<PkgItem> pkgItems;

	@Column(name = "img_url")
	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "pp_pi", joinColumns = { @JoinColumn(name = "pp_id") }, inverseJoinColumns = { @JoinColumn(name = "pi_id") })
	public List<PkgItem> getPkgItems() {
		return pkgItems;
	}

	public void setPkgItems(List<PkgItem> pkgItems) {
		this.pkgItems = pkgItems;
	}

	/**
	 * @return 单位为分
	 */
	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
}

package com.palagend.luna.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author palagend 套餐收费项
 */

@Entity
@Table(name="t_pkg_item")
public class PkgItem  extends BaseEntity{

	private static final long serialVersionUID = 1L;
	private String name;
	private String description;
	
	@Override
	public String toString() {
		return "PkgItem [name=" + name + ", description=" + description + "]";
	}
	
	@Column(nullable=false,unique=true)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(length=1000)
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}

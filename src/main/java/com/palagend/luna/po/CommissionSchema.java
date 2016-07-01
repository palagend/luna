package com.palagend.luna.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @author palagend
 * @email palagend@163.com
 * @since 2016-5-15
 */
@Entity
@Table(name="t_commission_schema")
public class CommissionSchema extends BaseEntity {

	@Override
	public String toString() {
		return "CommissionSchema [name=" + name + ", fromDate=" + fromDate
				+ ", untilDate=" + untilDate + ", money=" + money + ", deduct="
				+ deduct + ", rate=" + rate + "]";
	}

	private static final long serialVersionUID = -7116747398868800410L;

	/**
	 * 佣金配置方案名
	 */
	private String name;
	
	/**
	 * 有效期起始
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")//取日期时使用
	@DateTimeFormat(pattern="yyyy-MM-dd")//存日期时使用
	private Date fromDate;
	
	/**
	 * 有效期结束
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")//取日期时使用
	@DateTimeFormat(pattern="yyyy-MM-dd")//存日期时使用
	private Date untilDate;
	
	/**
	 * 交易金额
	 */
	private float money;
	
	/**
	 * 分销商提成
	 */
	private int deduct; 
	
	/**
	 * 分销商在一次交易中获得的提成占交易额的比率(0-1)
	 */
	private float rate = 0.0f;

	public float getMoney() {
		return money;
	}

	public void setMoney(float money) {
		this.money = money;
	}

	public int getDeduct() {
		return deduct;
	}

	public void setDeduct(int deduct) {
		this.deduct = deduct;
	}

	@Column(unique = true, nullable = false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 分销商在一次交易中获得的提成占交易额的比率(0-1)
	 */
	@Column(nullable = false)
	public float getRate() {
		return rate;
	}

	/**
	 * 分销商在一次交易中获得的提成占交易额的比率(0-1)
	 */
	public void setRate(float rate) {
		this.rate = rate;
	}
	@Column(name="until_date")
	public Date getUntilDate() {
		return untilDate;
	}

	public void setUntilDate(Date untilDate) {
		this.untilDate = untilDate;
	}
	@Column(name="from_date")
	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

}

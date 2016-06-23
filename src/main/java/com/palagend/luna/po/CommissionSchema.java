package com.palagend.luna.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * @author palagend
 * @email palagend@163.com
 * @since 2016-5-15
 */
@Entity
public class CommissionSchema extends BaseEntity {
	
	@Override
	public String toString() {
		return "CommissionSchema [name=" + name + ", timeStart=" + timeStart
				+ ", timeEnd=" + timeEnd + ", money=" + money + ", dedutct="
				+ dedutct + ", rate=" + rate + "]";
	}

	private static final long serialVersionUID = -7116747398868800410L;

	/**
	 * 佣金配置方案名
	 */
	private String name;
	
	/**
	 * 有效期起始
	 */
	private Date timeStart;
	
	/**
	 * 有效期结束
	 */
	private Date timeEnd;
	
	/**
	 * 交易金额
	 */
	private float money;
	
	/**
	 * 分销商提成
	 */
	private int dedutct; 
	
	/**
	 * 分销商在一次交易中获得的提成占交易额的比率(0-1)
	 */
	private float rate = 0.0f;

	
	
	public Date getTimeStart() {
		return timeStart;
	}

	public void setTimeStart(Date timeStart) {
		this.timeStart = timeStart;
	}

	public Date getTimeEnd() {
		return timeEnd;
	}

	public void setTimeEnd(Date timeEnd) {
		this.timeEnd = timeEnd;
	}

	public float getMoney() {
		return money;
	}

	public void setMoney(float money) {
		this.money = money;
	}

	public int getDedutct() {
		return dedutct;
	}

	public void setDedutct(int dedutct) {
		this.dedutct = dedutct;
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

}

package com.palagend.luna.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 客户实体类
 * 客户id,<br/>
 * 客户姓名,<br/>
 * 证件类型,<br/>
 * 证件号码,<br/>
 * 电话,<br/>
 * 业务号码,<br/>
 * 账户余额,<br/>
 * 小区编码,<br/>
 * 小区名称,<br/>
 * 楼宇编码,<br/>
 * 楼宇名称,<br/>
 * 地址编码,<br/>
 * 地址名称 ,<br/>
 * 主从机(0为主机,1为从,以此类推,9为宽带),<br/>
 * 报停状态(空为正常)
 * 
 */
/**
 * @author palagend
 * @email palagend@163.com
 * @since 2016-6-3
 */
@Entity
@Table(name = "t_customer")
public class Customer {

	@Id
	@Column(name="client_id")
	private String clientId;//客户id
	
	@Column(name="client_name")
	private String clientName;//客户名字
	
	@Column(name="card_type")
	private String cardType;//证件类型
	
	@Column(name="card_no")
	private String cardNo;//证件号
	
	private String phone;//boss信息来源 手机号
	private String tvn;//
	
	@Column(name="fee_money")
	private float feeMoney;//余额
	
	@Column(name="area_code")
	private String areaCode;//
	
	@Column(name="area_name")
	private String areaName;
	
	@Column(name="floor_code")
	private String floorCode;//楼宇编码
	
	@Column(name="floor_name")
	private String floorName;//楼宇明曾
	
	@Column(name="address_code")
	private String addressCode;//
	
	private String address;//
	private String zcj;
	
	@Column(name="current_state")
	private String currentState;//当前状态
	
	@Column(name="notice_phone")
	private String noticePhone;//通知电话
	
	public String getClientId() {
		return clientId;
	}
	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTvn() {
		return tvn;
	}
	public void setTvn(String tvn) {
		this.tvn = tvn;
	}
	/**
	 * @return 账户余额
	 */
	public float getFeeMoney() {
		return feeMoney;
	}
	public void setFeeMoney(float feeMoney) {
		this.feeMoney = feeMoney;
	}
	/**
	 * @return 小区编码
	 */
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	/**
	 * @return 小区名称
	 */
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	/**
	 * @return 楼宇编码
	 */
	public String getFloorCode() {
		return floorCode;
	}
	public void setFloorCode(String floorCode) {
		this.floorCode = floorCode;
	}
	/**
	 * @return 楼宇名称
	 */
	public String getFloorName() {
		return floorName;
	}
	public void setFloorName(String floorName) {
		this.floorName = floorName;
	}
	/**
	 * @return 地址编码
	 */
	public String getAddressCode() {
		return addressCode;
	}
	public void setAddressCode(String addressCode) {
		this.addressCode = addressCode;
	}
	/**
	 * @return 地址名称
	 */
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return 主从机(0为主机,1为从机,以此类推,9为宽带)<br/>
	 */
	public String getZcj() {
		return zcj;
	}
	public void setZcj(String zcj) {
		this.zcj = zcj;
	}
	/**
	 * @return 报停状态(null为正常)
	 */
	public String getCurrentState() {
		return currentState;
	}
	public void setCurrentState(String currentState) {
		this.currentState = currentState;
	}
	/**
	 * @return
	 * 用户短信通知的电话
	 */
	public String getNoticePhone() {
		return noticePhone;
	}
	public void setNoticePhone(String noticePhone) {
		this.noticePhone = noticePhone;
	}

}
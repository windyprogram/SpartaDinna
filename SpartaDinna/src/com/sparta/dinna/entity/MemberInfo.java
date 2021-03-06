package com.sparta.dinna.entity;

// Generated 2015-8-25 18:03:24 by Hibernate Tools 4.3.1

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Memberinfo generated by hbm2java
 */
@Entity
@Table(name = "memberinfo", catalog = "spartadinna", uniqueConstraints = {
		@UniqueConstraint(columnNames = "memTel"),
		@UniqueConstraint(columnNames = "memUserName") })
public class MemberInfo implements java.io.Serializable {

	private Integer memId;
	private Integer memTypeId;
	private String memName;
	private String memUserName;
	private String memPassword;
	private String memTel;
	private String memPhone;
	private String memAddress;
	private Byte memGender;
	private BigDecimal memMoney;
	private Integer memIntegral;
	private Date memBirthday;
	private Date memBeginTime;
	private Date memEndTime;
	private Byte delFlag;
	private Date lastSubTime;
	private Integer subBy;

	public MemberInfo() {
	}

	public MemberInfo(String memUserName, String memPassword, String memTel) {
		this.memUserName = memUserName;
		this.memPassword = memPassword;
		this.memTel = memTel;
	}

	public MemberInfo(Integer memTypeId, String memName, String memUserName,
			String memPassword, String memTel, String memPhone,
			String memAddress, Byte memGender, BigDecimal memMoney,
			Integer memIntegral, Date memBirthday, Date memBeginTime,
			Date memEndTime, Byte delFlag, Date lastSubTime, Integer subBy) {
		this.memTypeId = memTypeId;
		this.memName = memName;
		this.memUserName = memUserName;
		this.memPassword = memPassword;
		this.memTel = memTel;
		this.memPhone = memPhone;
		this.memAddress = memAddress;
		this.memGender = memGender;
		this.memMoney = memMoney;
		this.memIntegral = memIntegral;
		this.memBirthday = memBirthday;
		this.memBeginTime = memBeginTime;
		this.memEndTime = memEndTime;
		this.delFlag = delFlag;
		this.lastSubTime = lastSubTime;
		this.subBy = subBy;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "memID", unique = true, nullable = false)
	public Integer getMemId() {
		return this.memId;
	}

	public void setMemId(Integer memId) {
		this.memId = memId;
	}

	@Column(name = "memTypeID")
	public Integer getMemTypeId() {
		return this.memTypeId;
	}

	public void setMemTypeId(Integer memTypeId) {
		this.memTypeId = memTypeId;
	}

	@Column(name = "memName", length = 30)
	public String getMemName() {
		return this.memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	@Column(name = "memUserName", unique = true, nullable = false, length = 20)
	public String getMemUserName() {
		return this.memUserName;
	}

	public void setMemUserName(String memUserName) {
		this.memUserName = memUserName;
	}

	@Column(name = "memPassword", nullable = false, length = 20)
	public String getMemPassword() {
		return this.memPassword;
	}

	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}

	@Column(name = "memTel", unique = true, nullable = false, length = 15)
	public String getMemTel() {
		return this.memTel;
	}

	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}

	@Column(name = "memPhone", length = 15)
	public String getMemPhone() {
		return this.memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	@Column(name = "memAddress", length = 50)
	public String getMemAddress() {
		return this.memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	@Column(name = "memGender")
	public Byte getMemGender() {
		return this.memGender;
	}

	public void setMemGender(Byte memGender) {
		this.memGender = memGender;
	}

	@Column(name = "memMoney", precision = 10)
	public BigDecimal getMemMoney() {
		return this.memMoney;
	}

	public void setMemMoney(BigDecimal memMoney) {
		this.memMoney = memMoney;
	}

	@Column(name = "memIntegral")
	public Integer getMemIntegral() {
		return this.memIntegral;
	}

	public void setMemIntegral(Integer memIntegral) {
		this.memIntegral = memIntegral;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "memBirthday", length = 10)
	public Date getMemBirthday() {
		return this.memBirthday;
	}

	public void setMemBirthday(Date memBirthday) {
		this.memBirthday = memBirthday;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "memBeginTime", length = 19)
	public Date getMemBeginTime() {
		return this.memBeginTime;
	}

	public void setMemBeginTime(Date memBeginTime) {
		this.memBeginTime = memBeginTime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "memEndTime", length = 19)
	public Date getMemEndTime() {
		return this.memEndTime;
	}

	public void setMemEndTime(Date memEndTime) {
		this.memEndTime = memEndTime;
	}

	@Column(name = "delFlag")
	public Byte getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(Byte delFlag) {
		this.delFlag = delFlag;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "lastSubTime", length = 19)
	public Date getLastSubTime() {
		return this.lastSubTime;
	}

	public void setLastSubTime(Date lastSubTime) {
		this.lastSubTime = lastSubTime;
	}

	@Column(name = "subBy")
	public Integer getSubBy() {
		return this.subBy;
	}

	public void setSubBy(Integer subBy) {
		this.subBy = subBy;
	}

}

package com.wencst.server.aps.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the bom_config database table.
 * 
 */
@Entity
@Table(name="bom_config")
@NamedQuery(name="BomConfig.findAll", query="SELECT b FROM BomConfig b")
public class BomConfig implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Column(name="mom_cinvaddcode")
	private String momCinvaddcode;

	@Column(name="mom_cinvname")
	private String momCinvname;

	@Column(name="mom_cinvstd")
	private String momCinvstd;

	@Column(name="mom_cpspcode")
	private String momCpspcode;

	@Column(name="son_ccomunitname")
	private String sonCcomunitname;

	@Column(name="son_cinvaddcode")
	private String sonCinvaddcode;

	@Column(name="son_cinvname")
	private String sonCinvname;

	@Column(name="son_cinvstd")
	private String sonCinvstd;

	@Column(name="son_cpscode")
	private String sonCpscode;

	@Column(name="son_ipsquantity")
	private BigDecimal sonIpsquantity;

	@Column(name="son_sumquantity")
	private BigDecimal sonSumquantity;

	@Column(name="son_tdqtyd")
	private int sonTdqtyd;

	@Column(name="son_type")
	private String sonType;

	@Column(name="myid")
	private int myid;

	public int getMyid() {
		return myid;
	}

	public void setMyid(int myid) {
		this.myid = myid;
	}

	@Column(name="mypid")
	private int mypid;

	public int getMypid() {
		return mypid;
	}

	public void setMypid(int mypid) {
		this.mypid = mypid;
	}

	public BomConfig() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMomCinvaddcode() {
		return this.momCinvaddcode;
	}

	public void setMomCinvaddcode(String momCinvaddcode) {
		this.momCinvaddcode = momCinvaddcode;
	}

	public String getMomCinvname() {
		return this.momCinvname;
	}

	public void setMomCinvname(String momCinvname) {
		this.momCinvname = momCinvname;
	}

	public String getMomCinvstd() {
		return this.momCinvstd;
	}

	public void setMomCinvstd(String momCinvstd) {
		this.momCinvstd = momCinvstd;
	}

	public String getMomCpspcode() {
		return this.momCpspcode;
	}

	public void setMomCpspcode(String momCpspcode) {
		this.momCpspcode = momCpspcode;
	}

	public String getSonCcomunitname() {
		return this.sonCcomunitname;
	}

	public void setSonCcomunitname(String sonCcomunitname) {
		this.sonCcomunitname = sonCcomunitname;
	}

	public String getSonCinvaddcode() {
		return this.sonCinvaddcode;
	}

	public void setSonCinvaddcode(String sonCinvaddcode) {
		this.sonCinvaddcode = sonCinvaddcode;
	}

	public String getSonCinvname() {
		return this.sonCinvname;
	}

	public void setSonCinvname(String sonCinvname) {
		this.sonCinvname = sonCinvname;
	}

	public String getSonCinvstd() {
		return this.sonCinvstd;
	}

	public void setSonCinvstd(String sonCinvstd) {
		this.sonCinvstd = sonCinvstd;
	}

	public String getSonCpscode() {
		return this.sonCpscode;
	}

	public void setSonCpscode(String sonCpscode) {
		this.sonCpscode = sonCpscode;
	}

	public BigDecimal getSonIpsquantity() {
		return this.sonIpsquantity;
	}

	public void setSonIpsquantity(BigDecimal sonIpsquantity) {
		this.sonIpsquantity = sonIpsquantity;
	}

	public BigDecimal getSonSumquantity() {
		return this.sonSumquantity;
	}

	public void setSonSumquantity(BigDecimal sonSumquantity) {
		this.sonSumquantity = sonSumquantity;
	}

	public int getSonTdqtyd() {
		return this.sonTdqtyd;
	}

	public void setSonTdqtyd(int sonTdqtyd) {
		this.sonTdqtyd = sonTdqtyd;
	}

	public String getSonType() {
		return this.sonType;
	}

	public void setSonType(String sonType) {
		this.sonType = sonType;
	}

}
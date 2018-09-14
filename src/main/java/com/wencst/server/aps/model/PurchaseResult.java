package com.wencst.server.aps.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the purchase_result database table.
 * 
 */
@Entity
@Table(name="purchase_result")
@NamedQuery(name="PurchaseResult.findAll", query="SELECT p FROM PurchaseResult p")
public class PurchaseResult implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String id;

	private String ccode;

	private String cinvaddcode;

	private String cinvcode;

	private String cinvname;

	private String cinvstd;

	private BigDecimal fquantity;

	private String issatisfied;

	private Timestamp planstarttime;

	private BigDecimal purchasequantity;

	private BigDecimal quantity;

	private BigDecimal stockquantity;

	public PurchaseResult() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCcode() {
		return this.ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	public String getCinvaddcode() {
		return this.cinvaddcode;
	}

	public void setCinvaddcode(String cinvaddcode) {
		this.cinvaddcode = cinvaddcode;
	}

	public String getCinvcode() {
		return this.cinvcode;
	}

	public void setCinvcode(String cinvcode) {
		this.cinvcode = cinvcode;
	}

	public String getCinvname() {
		return this.cinvname;
	}

	public void setCinvname(String cinvname) {
		this.cinvname = cinvname;
	}

	public String getCinvstd() {
		return this.cinvstd;
	}

	public void setCinvstd(String cinvstd) {
		this.cinvstd = cinvstd;
	}

	public BigDecimal getFquantity() {
		return this.fquantity;
	}

	public void setFquantity(BigDecimal fquantity) {
		this.fquantity = fquantity;
	}

	public String getIssatisfied() {
		return this.issatisfied;
	}

	public void setIssatisfied(String issatisfied) {
		this.issatisfied = issatisfied;
	}

	public Timestamp getPlanstarttime() {
		return this.planstarttime;
	}

	public void setPlanstarttime(Timestamp planstarttime) {
		this.planstarttime = planstarttime;
	}

	public BigDecimal getPurchasequantity() {
		return this.purchasequantity;
	}

	public void setPurchasequantity(BigDecimal purchasequantity) {
		this.purchasequantity = purchasequantity;
	}

	public BigDecimal getQuantity() {
		return this.quantity;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getStockquantity() {
		return this.stockquantity;
	}

	public void setStockquantity(BigDecimal stockquantity) {
		this.stockquantity = stockquantity;
	}

}
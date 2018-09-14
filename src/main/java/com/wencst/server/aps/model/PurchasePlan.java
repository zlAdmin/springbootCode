package com.wencst.server.aps.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the purchase_plan database table.
 * 
 */
@Entity
@Table(name="purchase_plan")
@NamedQuery(name="PurchasePlan.findAll", query="SELECT p FROM PurchasePlan p")
public class PurchasePlan implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String id;

	private String ccode;

	private String cinvaddcode;

	private String cinvcode;

	private String cinvname;

	private String cinvstd;

	private Timestamp endtime;

	private BigDecimal fquantity;

	private Timestamp plantime;

	public PurchasePlan() {
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

	public Timestamp getEndtime() {
		return this.endtime;
	}

	public void setEndtime(Timestamp endtime) {
		this.endtime = endtime;
	}

	public BigDecimal getFquantity() {
		return this.fquantity;
	}

	public void setFquantity(BigDecimal fquantity) {
		this.fquantity = fquantity;
	}

	public Timestamp getPlantime() {
		return this.plantime;
	}

	public void setPlantime(Timestamp plantime) {
		this.plantime = plantime;
	}

}
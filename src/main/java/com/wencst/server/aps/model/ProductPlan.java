package com.wencst.server.aps.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;


/**
 * The persistent class for the product_plan database table.
 * 
 */
@Entity
@Table(name="product_plan")
@NamedQuery(name="ProductPlan.findAll", query="SELECT p FROM ProductPlan p")
public class ProductPlan implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String id;

	private String ccode;

	private String cinvaddcode;

	private String cinvcode;

	private String cinvname;
	
	public String getCinvname() {
		return cinvname;
	}

	public void setCinvname(String cinvname) {
		this.cinvname = cinvname;
	}

	public String getCancomplete() {
		return cancomplete;
	}

	public void setCancomplete(String cancomplete) {
		this.cancomplete = cancomplete;
	}

	private String cancomplete;
	
	private Timestamp endtime;

	private BigDecimal fquantity;

	private Timestamp planendtime;

	private Timestamp planstarttime;

	public ProductPlan() {
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

	public Timestamp getPlanendtime() {
		return this.planendtime;
	}

	public void setPlanendtime(Timestamp planendtime) {
		this.planendtime = planendtime;
	}

	public Timestamp getPlanstarttime() {
		return this.planstarttime;
	}

	public void setPlanstarttime(Timestamp planstarttime) {
		this.planstarttime = planstarttime;
	}

}
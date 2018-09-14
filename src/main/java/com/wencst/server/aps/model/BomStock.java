package com.wencst.server.aps.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the bom_stock database table.
 * 
 */
@Entity
@Table(name="bom_stock")
@NamedQuery(name="BomStock.findAll", query="SELECT b FROM BomStock b")
public class BomStock implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String id;

	private String ccomunitname;

	private String cinvaddcode;

	private String cinvname;

	private String cinvstd;

	private String cpspcode;

	private BigDecimal quantity;

	public BomStock() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCcomunitname() {
		return this.ccomunitname;
	}

	public void setCcomunitname(String ccomunitname) {
		this.ccomunitname = ccomunitname;
	}

	public String getCinvaddcode() {
		return this.cinvaddcode;
	}

	public void setCinvaddcode(String cinvaddcode) {
		this.cinvaddcode = cinvaddcode;
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

	public String getCpspcode() {
		return this.cpspcode;
	}

	public void setCpspcode(String cpspcode) {
		this.cpspcode = cpspcode;
	}

	public BigDecimal getQuantity() {
		return this.quantity;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

}
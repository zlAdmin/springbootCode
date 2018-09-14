package com.wencst.server.aps.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the bom_bstock database table.
 * 
 */
@Entity
@Table(name="bom_bstock")
@NamedQuery(name="BomBstock.findAll", query="SELECT b FROM BomBstock b")
public class BomBstock implements Serializable {
	private static final long serialVersionUID = 1L;

	private String ccomunitname;

	private String cinvaddcode;

	private String cinvname;

	private String cinvstd;

	private String cpspcode;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String id;

	private BigDecimal quantity;

	public BomBstock() {
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

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public BigDecimal getQuantity() {
		return this.quantity;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

}
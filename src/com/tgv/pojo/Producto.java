package com.tgv.pojo;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;


@Entity
@Table(name="Producto")
@IdClass(EmbededIdProducto.class)
public class Producto implements Serializable {
		
	@Id
	private String prod_nom;
	
	@Id
	private String peso;
	
	private int stock;
	private float precio_c;
	private float precio_v;
	private Timestamp fua;
	private String img_tp = "resources/img/no-disponible.png";
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="producto", cascade = CascadeType.ALL)
	private Set<Detalle> detalles;
//	
//	private static final long serialVersionUID = 1113799434508676095L;
	
	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public String getProd_nom() {
		return prod_nom;
	}

	public void setProd_nom(String prod_nom) {
		this.prod_nom = prod_nom;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public float getPrecio_c() {
		return precio_c;
	}

	public void setPrecio_c(float precio_c) {
		this.precio_c = precio_c;
	}

	public float getPrecio_v() {
		return precio_v;
	}

	public void setPrecio_v(float precio_v) {
		this.precio_v = precio_v;
	}

	public Timestamp getFua() {
		return fua;
	}

	public void setFua(Timestamp fua) {
		this.fua = fua;
	}

	public String getImg_tp() {
		return img_tp;
	}

	public void setImg_tp(String img_tp) {
		this.img_tp = img_tp;
	}


	public Producto() {
		super();
	}

	public Producto(String peso, String prod_nom, int stock, float precio_c, float precio_v) {
		super();
		this.peso = peso;
		this.prod_nom = prod_nom;
		this.stock = stock;
		this.precio_c = precio_c;
		this.precio_v = precio_v;
	}

	public Producto(String peso, String prod_nom, int stock, float precio_c) {
		super();
		this.peso = peso;
		this.prod_nom = prod_nom;
		this.stock = stock;
		this.precio_c = precio_c;
	}

	@Override
	public String toString() {
		return "Producto [prod_nom=" + prod_nom + ", peso=" + peso + ", stock=" + stock + ", precio_c=" + precio_c
				+ ", precio_v=" + precio_v + ", fua=" + fua + ", img_tp=" + img_tp + ", detalles=" + detalles + "]";
	}
	
	
	
	
}

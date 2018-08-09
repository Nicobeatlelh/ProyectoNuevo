package com.tgv.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Detalle")
public class Detalle {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int num_detalle;
	
	@ManyToOne
	@JoinColumn(name="id_fac")
	private Factura factura;
	
	@ManyToOne
    @JoinColumns({
        @JoinColumn(
            name = "prod_nom",
            referencedColumnName = "prod_nom"),
        @JoinColumn(
            name = "peso",
            referencedColumnName = "peso")
    })
	private Producto producto;
	
	private int cantidad;
	
	private float precio_vend;
	
	private String entregado= "no";

	public int getNum_detalle() {
		return num_detalle;
	}

	public void setNum_detalle(int num_detalle) {
		this.num_detalle = num_detalle;
	}

	public Factura getFactura() {
		return factura;
	}

	public void setFactura(Factura factura) {
		this.factura = factura;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public float getPrecio_vend() {
		return precio_vend;
	}

	public void setPrecio_vend(float precio_vend) {
		this.precio_vend = precio_vend;
	}

	public String getEntregado() {
		return entregado;
	}

	public void setEntregado(String entregado) {
		this.entregado = entregado;
	}

	@Override
	public String toString() {
		return "Detalle [num_detalle=" + num_detalle + ", factura=" + factura + ", producto=" + producto + ", cantidad="
				+ cantidad + ", precio_vend=" + precio_vend + ", entregado=" + entregado + "]";
	}
	
	
	
	

}

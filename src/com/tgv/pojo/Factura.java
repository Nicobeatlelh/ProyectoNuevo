package com.tgv.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Factura")
public class Factura {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_fac;
	
	@ManyToOne
	@JoinColumn(name="id_cli")
	private Cliente cliente;
	
	private Timestamp fecha_fac;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="factura", cascade = CascadeType.ALL)
	private Set<Detalle> detalles;

	public int getId_fac() {
		return id_fac;
	}

	public void setId_fac(int id_fac) {
		this.id_fac = id_fac;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Timestamp getFecha_fac() {
		return fecha_fac;
	}

	public void setFecha_fac(Timestamp fecha_fac) {
		this.fecha_fac = fecha_fac;
	}

	@Override
	public String toString() {
		return "Factura [id_fac=" + id_fac + ", cliente=" + cliente + ", fecha_fac=" + fecha_fac + ", detalles="
				+ detalles + "]";
	}
	
	
	
}

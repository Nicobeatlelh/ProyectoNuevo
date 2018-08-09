package com.tgv.dao;

import java.util.List;

import com.tgv.pojo.Factura;

public interface FacturaDaoInterfaz {
	public Factura save(Factura factura);
	
	public List<Factura> getFacturas();

}

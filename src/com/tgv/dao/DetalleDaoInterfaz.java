package com.tgv.dao;

import java.util.List;

import com.tgv.pojo.Detalle;

public interface DetalleDaoInterfaz {
	
	public Detalle save(Detalle detalle);
	
	public List<Detalle> buscarDetallesPorFactura(int idFac);

}

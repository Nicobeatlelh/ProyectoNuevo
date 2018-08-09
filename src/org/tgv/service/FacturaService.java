package org.tgv.service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgv.dao.ClassGenerics;
import com.tgv.dao.FacturaDaoInterfaz;
import com.tgv.pojo.Cliente;
import com.tgv.pojo.Factura;

@Service
public class FacturaService {
	
	
	@Autowired
	private FacturaDaoInterfaz facturaDao;
	
	public Factura save(Cliente cliente, Factura factura) {
		factura.setFecha_fac(new Timestamp(new Date().getTime()));
		factura.setCliente(cliente);
		return facturaDao.save(factura);
	}
	public List<Factura> getFacturas(){
		return facturaDao.getFacturas();
	}
}

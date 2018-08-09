package org.tgv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgv.dao.DetalleDaoInterfaz;
import com.tgv.pojo.Detalle;
import com.tgv.pojo.Factura;
import com.tgv.pojo.Producto;

@Service
public class DetalleService {
	
	@Autowired
	private DetalleDaoInterfaz detalleDao;
	
	public Detalle save(Factura fac, Producto prod, Detalle detalle) {
		detalle.setFactura(fac);
		detalle.setProducto(prod);
		detalle.setPrecio_vend(prod.getPrecio_v());
		return detalleDao.save(detalle);
	}

}

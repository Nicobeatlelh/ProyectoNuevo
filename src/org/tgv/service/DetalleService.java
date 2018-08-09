package org.tgv.service;

import java.util.List;

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
	
	public Detalle save(Factura fac, Producto prod, Detalle detalle, int cantidad) {
		if(cantidad <= prod.getStock()) {
			
		detalle.setFactura(fac);
		detalle.setProducto(prod);
		detalle.setCantidad(cantidad);
		detalle.setPrecio_vend(prod.getPrecio_v());
		
		return detalleDao.save(detalle);
		}
		return null;
	}
	
	public List<Detalle> buscarDetallesPorFactura(int idFac){
		return detalleDao.buscarDetallesPorFactura(idFac);
	}

}

package com.tgv.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tgv.pojo.Factura;

@Transactional
@Repository
public class FacturaDaoImpl implements FacturaDaoInterfaz {

	@Autowired
	private SessionFactory sessionFactory;
	

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public Factura save(Factura factura) {
		getSession().save(factura);
		return factura;
	}

	@Override
	public List<Factura> getFacturas() {

		List<Factura> facturas = null;
		Query query = (Query) getSession().createQuery("from Factura");
		facturas = query.list();
		return facturas;
	}




	
}

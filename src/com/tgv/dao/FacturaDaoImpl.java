package com.tgv.dao;

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
	public void save(Factura factura) {
		getSession().save(factura);
	}
	
}

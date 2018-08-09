package com.tgv.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tgv.pojo.Detalle;

@Transactional
@Repository
public class DetalleDaoImpl implements DetalleDaoInterfaz {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Detalle save(Detalle detalle) {

		getSession().save(detalle);
		return detalle;
		
	}

}

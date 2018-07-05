package com.tgv.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tgv.pojo.Producto;



@Transactional
@Repository
public class ProdDaoImpl implements ProdDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void save(Producto admin) {
		getSession().save(admin);
	}

	@Override
	public List<Producto> buscarTodos() {
		List<Producto> admins = null;
		 Query query = (Query) getSession().createQuery("from Admin");
		    admins = query.list();
		    return admins;    
	}

	@Override
	public Producto buscarXId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Producto> buscarXNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void actualizar(Producto admin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void borrar(int idAd) {
		// TODO Auto-generated method stub
		
	}
	
	
	

}

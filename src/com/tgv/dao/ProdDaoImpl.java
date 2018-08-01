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
public class ProdDaoImpl extends ClassGenerics<Producto> {

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
		 Query query = (Query) getSession().createQuery("from Producto");
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
		List<Producto> productos = null;
		Query query = (Query) getSession().createQuery("from Producto where prod_nom like '%"+nombre+"%'");
		productos = query.list();
		return productos;
	}

	@Override
	public void actualizar(Producto prod) {

		
	}

	@Override
	public void borrar(int id) {
		// TODO Auto-generated method stub
		getSession().delete(id);
	}
	
	@Override
	public void borrarPorNombreYPeso(String nom, String peso) {
		Query query = (Query) getSession().createQuery("delete from Producto where prod_nom = '"+nom+"' AND peso = '"+peso+"'");
		query.executeUpdate();
	}
	@Override
	public Producto buscarPorNombreYPeso(String nom, String peso) {
		Producto prod = null;
		Query query = (Query) getSession().createQuery("from Producto where prod_nom = '"+nom+"' AND peso = '"+peso+"'");
		prod = (Producto) query.uniqueResult();
		return prod;
	}
	
	
	

}

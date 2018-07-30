package com.tgv.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tgv.pojo.Cliente;


@Transactional
@Repository
public class ClienteDaoImpl extends ClassGenerics<Cliente> {
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void save(Cliente e) {

		getSession().save(e);
		
	}

	@Override
	public List<Cliente> buscarTodos() {

		List<Cliente> cls = null;
		 Query query = (Query) getSession().createQuery("from Clientes");
		    cls = query.list();
		    return cls; 
	}


	@Override
	public List<Cliente> buscarXNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void actualizar(int id) {
		getSession().update(id);
		
	}

	@Override
	public void borrar(int id) {
		// TODO Auto-generated method stub
		Cliente cli = null;
		 cli = (Cliente) getSession().load(Cliente.class, id);
		getSession().delete(cli);
		
	}

	@Override
	public Cliente buscarXId(int id) {
		// TODO Auto-generated method stub
		Query query = (Query) getSession().createQuery("from Clientes where id = "+id);
		return null;
	}

}

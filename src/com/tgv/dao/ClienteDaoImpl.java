package com.tgv.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tgv.pojo.Cliente;

public class ClienteDaoImpl implements InterfazGenerics<Cliente> {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void save(Cliente e) {

		getSession().save(e);
		
	}

	@Override
	public List<Cliente> buscarTodos() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Cliente> buscarXNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void actualizar(Cliente e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void borrar(int idAd) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Cliente buscarXId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}

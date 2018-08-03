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
		List<Cliente> clientes = null;
		Query query = (Query) getSession().createQuery("from Clientes where nom_cli like '%"+nombre+"%'");
		clientes = query.list();
		return clientes;
	}

	@Override
	public void actualizar(Cliente cli) {
		Query query = (Query) getSession().createQuery("update Clientes set nom_cli = '"+cli.getNom_cli()+"', tel_cli = '"+cli.getTel_cli()+"', deuda_cli = "+cli.getDeuda_cli()+" where id_cli = "+cli.getId_cli());
		query.executeUpdate();
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
		Cliente cli = null;
		 cli = (Cliente) getSession().get(Cliente.class, id);
		return cli;
	}

}

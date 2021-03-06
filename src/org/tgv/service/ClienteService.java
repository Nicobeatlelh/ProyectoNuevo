package org.tgv.service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgv.dao.ClassGenerics;
import com.tgv.dao.InterfazGenerics;
import com.tgv.pojo.Cliente;


@Service
public class ClienteService {

	@Autowired
	private ClassGenerics<Cliente> clienteDao;
	
	public void save(Cliente cli) {

		clienteDao.save(cli);
	}

	public List<Cliente> buscarTodos() {

		return clienteDao.buscarTodos();
	}
	
	public List<Cliente> buscarPorNombre(String nombre) {

		return clienteDao.buscarXNombre(nombre);
	}

	public Cliente buscarXId(int idAd) {
		// TODO Auto-generated method stub
		return clienteDao.buscarXId(idAd);
	}
	
	public void actualizar(Cliente cliente) {
		clienteDao.actualizar(cliente);
	}
	public void borrar(int id) {
		clienteDao.borrar(id);
	}
	
	
}

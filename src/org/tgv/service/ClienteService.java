package org.tgv.service;

import java.sql.Timestamp;
import java.util.Date;

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
	
	
}
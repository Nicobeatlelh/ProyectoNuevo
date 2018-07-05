package org.tgv.service;


import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.tomcat.jni.Time;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgv.dao.ProdDao;
import com.tgv.pojo.Producto;

@Service
public class ProdService {
	
	@Autowired
	private ProdDao adminDao;

	public void save(Producto admin) {
	
		adminDao.save(admin);
	}

	public List<Producto> buscarTodos() {
		
		return adminDao.buscarTodos();
	}
	
	public Producto buscarXId(int id) {
		
		return adminDao.buscarXId(id);
	}

	public void actualizar(Producto adminForm) {

		adminDao.actualizar(adminForm);
		
	}

	public void borrar(int idAd) {

		adminDao.borrar(idAd);
	}

}

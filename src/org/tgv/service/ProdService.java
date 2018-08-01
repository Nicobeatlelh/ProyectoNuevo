package org.tgv.service;


import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.tomcat.jni.Time;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgv.dao.ClassGenerics;
import com.tgv.dao.InterfazGenerics;
import com.tgv.pojo.Producto;

@Service
public class ProdService {
	
	@Autowired
	private ClassGenerics<Producto> adminDao;

	public void save(Producto admin) {
		admin.setFua(new Timestamp(new Date().getTime()));
		adminDao.save(admin);
	}

	public List<Producto> buscarTodos() {
		
		return adminDao.buscarTodos();
	}
	
	public Producto buscarXId(int id) {
		
		return (Producto) adminDao.buscarXId(id);
	}

	public void actualizar(Producto prod) {

		adminDao.actualizar(prod);
		
	}

	public void borrar(int id) {

		adminDao.borrar(id);
	}
	public void borrarPorNombreYPeso(String nom, String peso) {

		adminDao.borrarPorNombreYPeso(nom, peso);
	}

}

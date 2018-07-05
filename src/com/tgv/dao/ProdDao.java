package com.tgv.dao;

import java.util.List;

import com.tgv.pojo.Producto;

public interface ProdDao {

	public void save(Producto prod);
	public List<Producto> buscarTodos();
	public Producto buscarXId(int id);
	public List<Producto> buscarXNombre(String nombre);
	public void actualizar(Producto prod);
	public void borrar(int idAd);
}

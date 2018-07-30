package com.tgv.dao;

import java.util.List;


public interface InterfazGenerics<E> {

	public void save(E e);
	public List<E> buscarTodos();
	public E buscarXId(int id);
	public List<E> buscarXNombre(String nombre);
	public void actualizar(E e);
	public void borrar(E e);
}

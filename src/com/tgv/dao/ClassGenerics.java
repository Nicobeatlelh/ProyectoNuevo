package com.tgv.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;


public abstract class ClassGenerics<E> {
	
	@Autowired
	public SessionFactory sessionFactory;

	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void save(E e) {
		
	}
	public List<E> buscarTodos(){
		return null;
	}
	public E buscarXId(int id) {
		return null;
	}
	public List<E> buscarXNombre(String nombre){
		return null;
	}
	public void actualizar(E e) {

	}
	public void borrar(int id) {
		
	}
	public void borrarPorNombreYPeso(String nom, String peso) {
		
	}
	
	public E buscarPorNombreYPeso(String nom, String peso) {
		return null;
	}
}

package com.tgv.pojo;

import java.io.Serializable;

public class EmbededIdProducto implements Serializable{

	protected String prod_nom;
	protected String peso;
	public EmbededIdProducto() {
		
	}
	
	public EmbededIdProducto(String prod_nom, String peso) {
		this.prod_nom = prod_nom;
		this.peso = peso;
	}
	
}

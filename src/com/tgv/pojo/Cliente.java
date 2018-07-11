package com.tgv.pojo;

public class Cliente {
	private int id_cli;
	private String nom_cli;
	private String tel_cli;
	private int deuda_cli;
	private int prod_pref_prod;
	private String prod_pref_peso;
	private String img_cli;
	public int getId_cli() {
		return id_cli;
	}
	public void setId_cli(int id_cli) {
		this.id_cli = id_cli;
	}
	public String getNom_cli() {
		return nom_cli;
	}
	public void setNom_cli(String nom_cli) {
		this.nom_cli = nom_cli;
	}
	public String getTel_cli() {
		return tel_cli;
	}
	public void setTel_cli(String tel_cli) {
		this.tel_cli = tel_cli;
	}
	public int getDeuda_cli() {
		return deuda_cli;
	}
	public void setDeuda_cli(int deuda_cli) {
		this.deuda_cli = deuda_cli;
	}
	public int getProd_pref_prod() {
		return prod_pref_prod;
	}
	public void setProd_pref_prod(int prod_pref_prod) {
		this.prod_pref_prod = prod_pref_prod;
	}
	public String getProd_pref_peso() {
		return prod_pref_peso;
	}
	public void setProd_pref_peso(String prod_pref_peso) {
		this.prod_pref_peso = prod_pref_peso;
	}
	public String getImg_cli() {
		return img_cli;
	}
	public void setImg_cli(String img_cli) {
		this.img_cli = img_cli;
	}
	public Cliente() {
		super();
	}
	
	
	
}

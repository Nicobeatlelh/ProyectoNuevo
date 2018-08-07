package com.tgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.tgv.service.ClienteService;

@Controller
public class FacturaController {
	
	@Autowired
	private ClienteService clienteService;
	
	@RequestMapping("/factura")
	public String showFactura(Model model) {
		
	return "Fac";
	}
	@RequestMapping("/factura/${idCli}/crear")
	public String crearFactura(Model model, @PathVariable("idCli") int idCli) {
	
		
	return "Fac";
	}

}

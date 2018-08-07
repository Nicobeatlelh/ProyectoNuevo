package com.tgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.tgv.service.ClienteService;
import org.tgv.service.FacturaService;

import com.tgv.pojo.Cliente;
import com.tgv.pojo.Factura;

@Controller
public class FacturaController {
	
	@Autowired
	private ClienteService clienteService;
	
	@Autowired
	private FacturaService facturaService;
	
	@RequestMapping("/factura")
	public String showFactura(Model model) {
		
	return "Fac";
	}
	@RequestMapping("/factura/{idCli}/crear")
	public String crearFactura(Model model, @PathVariable("idCli") int idCli) {
	
		Cliente cli = clienteService.buscarXId(idCli);
		facturaService.save(cli, new Factura());
		
	return "redirect:/factura";
	}

}

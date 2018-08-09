package com.tgv.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.tgv.service.ClienteService;
import org.tgv.service.DetalleService;
import org.tgv.service.FacturaService;

import com.tgv.pojo.Cliente;
import com.tgv.pojo.Detalle;
import com.tgv.pojo.Factura;
import com.tgv.pojo.Producto;

@Controller
@SessionAttributes("factura")
public class FacturaController {
	
	@Autowired
	private ClienteService clienteService;
	
	@Autowired
	private FacturaService facturaService;
	
	@Autowired
	private DetalleService detalleService;
	
	@RequestMapping("/factura")
	public String showFactura(Model model) {

		Detalle d = new Detalle();
		model.addAttribute("detalle", d);
	return "Fac";
	}
	@RequestMapping("/factura/{idCli}/crear")
	public String crearFactura(Model model, @PathVariable("idCli") int idCli) {

		Cliente cli = clienteService.buscarXId(idCli);
		Factura fac = facturaService.save(cli, new Factura());
		model.addAttribute("factura", fac);
		
	return "redirect:/factura";
	}
	@RequestMapping("/factura/redirect")
	public String redirect(Model model, @ModelAttribute("factura") Factura factura,  HttpSession session) {
		Producto prod = (Producto) session.getAttribute("prodObt");
		System.out.println("Esta es la factura----" + factura.toString());
		System.out.println("Esta es el producto----" + prod.toString());
		Detalle d = detalleService.save(factura, prod, new Detalle());
		return "redirect:/factura";
	}

}

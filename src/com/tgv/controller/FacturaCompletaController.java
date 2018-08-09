package com.tgv.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.tgv.service.DetalleService;
import org.tgv.service.FacturaService;

import com.tgv.pojo.Detalle;
import com.tgv.pojo.Factura;

@Controller
@SessionAttributes("detalles")
public class FacturaCompletaController {

	@Autowired
	private FacturaService facturaService;
	
	@Autowired
	private DetalleService detalleService;
	
	@RequestMapping("/facturaCompleta")
	public String showFactura(Model model) {
		
		List<Factura> facturas = facturaService.getFacturas();
		model.addAttribute("facturas", facturas);
	return "facturaCompleta";
	}
	
	@RequestMapping("/facturaCompleta/detalle/{idFac}")
	public String getFacturaConDetalle(Model model, @PathVariable("idFac") int idFac) {
		List<Detalle> detalles = detalleService.buscarDetallesPorFactura(idFac);
		model.addAttribute("detalles", detalles);
		return "redirect:/facturaCompleta";
	}
}

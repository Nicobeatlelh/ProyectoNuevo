package com.tgv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PedidosController {
	
	@RequestMapping("/Pedidos")
	public String showPedidos(Model model) {
		model.addAttribute("resultado", "Resultado desde Sesion");
		return "Pedidos";
	}

}

/**
 * 
 */
package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.tgv.service.ClienteService;

import com.tgv.pojo.Cliente;
import com.tgv.pojo.Producto;

/**
 * @author Soporte
 *
 */
@Controller
@SessionAttributes("resultado")
public class IndexController {
	
	@Autowired
	private ClienteService clienteService;

	@RequestMapping("/")
	public String showIndex(Model model) {
		Producto producto = new Producto();
		model.addAttribute("producto", producto);
		model.addAttribute("resultado", "Resultado desde Sesion");
		Cliente cliente = new Cliente();
		List<Cliente> cls = clienteService.buscarTodos();
		model.addAttribute("cls",cls);
		model.addAttribute("cliente",cliente);
		model.addAttribute("resultado", "Resultado desde Sesion");
		return "index";
	}
	
	@RequestMapping("/Proveedores")
	public String showProveedores(Model model) {
		model.addAttribute("resultado", "Resultado desde Sesion");
		return "Proveedores";
	}
	
	@RequestMapping("/about")
	public String showAbout(SessionStatus sessionStatus) {
		// Limpia las sesiones que se tengan
		sessionStatus.setComplete();
		return "acercade";
	}
	
	
	
	
}

/**
 * 
 */
package com.tgv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.tgv.pojo.Producto;

/**
 * @author Soporte
 *
 */
@Controller
@SessionAttributes("resultado")
public class IndexController {

	@RequestMapping("/")
	public String showIndex(Model model) {
		Producto producto = new Producto();
		model.addAttribute("producto", producto);
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

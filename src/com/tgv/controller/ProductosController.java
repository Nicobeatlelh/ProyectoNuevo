package com.tgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.tgv.service.ProdService;

import com.tgv.pojo.Producto;

@Controller
public class ProductosController {
	
	@Autowired
	private ProdService prodService;

	@RequestMapping("/Productos")
	public String showProductos(Model model, @ModelAttribute("resultado") String resultado) {
		Producto producto = new Producto();
		model.addAttribute("producto", producto);
//		model.addAttribute("resultado", "Resultado desde Sesion");
		return "Productos";
	}
	
	@RequestMapping(value="/Productos/guardar", method=RequestMethod.POST)
	public String saveProductos(@ModelAttribute("producto") Producto adminForm, Model model, RedirectAttributes ra) {
		model.addAttribute("adminForm", adminForm);
		System.out.println("Esto es lo que se graba: "+ adminForm.getProd_nom());
		if(adminForm.getProd_nom()!="") {
			prodService.save(adminForm);
		}
		return "redirect:/Productos";
	}
}
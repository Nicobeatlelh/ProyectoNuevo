package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.tgv.service.ProdService;

import com.tgv.pojo.Producto;

@Controller
@SessionAttributes("prodObt")
public class ProductosController {
	
	@Autowired
	private ProdService prodService;

	@RequestMapping("/Productos")
	public String showProductos(Model model, @ModelAttribute("resultado") String resultado) {
		Producto producto = new Producto();
		List<Producto> productos = prodService.buscarTodos();
		model.addAttribute("producto", producto);
		model.addAttribute("productos",productos);
		System.out.println("Estos son los productos: "+productos);
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
	
	@RequestMapping(value="/Productos/{prodNom}/{peso}/borrar")
//	Se puede pasar un @RequestParam("fuera") String fuera para pasar un valor que no es parte del objeto(POJO)
	public String borrar(@ModelAttribute("producto") Producto prodForm, Model model, @PathVariable("prodNom") String prodNom, @PathVariable("peso") String peso) {
		System.out.println("Estoy borrando un producto");
		prodService.borrarPorNombreYPeso(prodNom, peso);
		return "redirect:/Productos";
	}
	
	@RequestMapping(value="/Productos/{prodNom}/{peso}/actualizar")
//	Se puede pasar un @RequestParam("fuera") String fuera para pasar un valor que no es parte del objeto(POJO)
	public String actualizar(Model model, @PathVariable("prodNom") String prodNom, @PathVariable("peso") String peso) {
		Producto prod = prodService.buscarPorNombreYPeso(prodNom, peso);
		model.addAttribute("prodObt", prod);
		return "Clientes";
	}
	
	@RequestMapping(value="/Productos/{prodNom}/buscar")
//	Se puede pasar un @RequestParam("fuera") String fuera para pasar un valor que no es parte del objeto(POJO)
	public String buscarSimilares(Model model, @PathVariable("prodNom") String prodNom) {
		List<Producto> prods = prodService.buscarPorNombre(prodNom);
		model.addAttribute("prodsObt", prods);
		return "detalle";
	}
	
	@RequestMapping(value="/Productos/{prodNom}/{peso}/buscar")
	public String buscarProducto(Model model, @PathVariable("prodNom") String prodNom, @PathVariable("peso") String peso) {
		Producto prod = prodService.buscarPorNombreYPeso(prodNom, peso);
		model.addAttribute("prodObt", prod);
		return "redirect:/factura";
	}
}

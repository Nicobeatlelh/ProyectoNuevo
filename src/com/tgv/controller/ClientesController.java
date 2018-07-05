package com.tgv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tgv.pojo.Cliente;
import com.tgv.pojo.Producto;

@Controller
public class ClientesController {

	@RequestMapping("/Clientes")
	public String showClientes(Model model,  @ModelAttribute("resultado") String resultado) {
		Cliente cliente = new Cliente();
		model.addAttribute("cliente",cliente);
		model.addAttribute("resultado", "Resultado desde Sesion");
		return "Clientes";
	}
	
	@RequestMapping(value="/Productos/guardar", method=RequestMethod.POST)
	public String saveProductos(@ModelAttribute("cliente") Cliente clienteForm, Model model, RedirectAttributes ra) {
		model.addAttribute("clienteForm", clienteForm);
		System.out.println("Esto es lo que se graba: "+ clienteForm.getId_cli());
		if(clienteForm.getId_cli()!=0) {
			prodService.save(adminForm);
		}
		return "redirect:/Productos";
	}
}

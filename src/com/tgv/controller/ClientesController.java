package com.tgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.tgv.service.ClienteService;

import com.tgv.pojo.Cliente;
import com.tgv.pojo.Producto;

@Controller
public class ClientesController {
	
	@Autowired
	private ClienteService clienteService;

	@RequestMapping("/Clientes")
	public String showClientes(Model model,  @ModelAttribute("resultado") String resultado) {
		Cliente cliente = new Cliente();
		model.addAttribute("cliente",cliente);
		model.addAttribute("resultado", "Resultado desde Sesion");
		return "Clientes";
	}
	
	@RequestMapping(value="/Clientes/guardar", method=RequestMethod.POST)
	public String saveProductos(@ModelAttribute("cliente") Cliente clienteForm, Model model, RedirectAttributes ra) {
		model.addAttribute("clienteForm", clienteForm);
		System.out.println("Esto es lo que se graba: "+ clienteForm.getId_cli());
	
			clienteService.save(clienteForm);
	
		return "redirect:/Clientes";
	}
}

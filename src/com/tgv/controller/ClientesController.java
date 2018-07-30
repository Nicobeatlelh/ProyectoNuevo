package com.tgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
		List<Cliente> cls = clienteService.buscarTodos();
		model.addAttribute("cls",cls);
		model.addAttribute("cliente",cliente);
		model.addAttribute("resultado", "Resultado desde Sesion");
		return "Clientes";
	}
	
//	@RequestMapping("/")
//	public String showClientesIndex(Model model,  @ModelAttribute("resultado") String resultado) {
//		
//		return "index";
//	}
	
	@RequestMapping(value="/Clientes/guardar", method=RequestMethod.POST)
	public String saveProductos(@ModelAttribute("cliente") Cliente clienteForm, Model model, RedirectAttributes ra) {
		model.addAttribute("clienteForm", clienteForm);
		System.out.println("Esto es lo que se graba: "+ clienteForm.getId_cli());
//		if(clienteForm.getId_cli()!=0) {
//			clienteService.actualizar(clienteForm);
//		}else {
//			clienteService.save(clienteForm);
//		}
//			
	clienteService.save(clienteForm);
	
		return "redirect:/Clientes";
	}
	
	@RequestMapping(value="clientes/{idAd}/actualizar")
//	Se puede pasar un @RequestParam("fuera") String fuera para pasar un valor que no es parte del objeto(POJO)
	public String actualizar(Model model, @PathVariable("idAd") int idAd) {
		if(clienteService.buscarXId(idAd)!=null) {
			Cliente cliente1 = clienteService.buscarXId(idAd);
			model.addAttribute("cliente",cliente1);
		}else {
			model.addAttribute("resultado", "No se ha encontrado el Admin que se intenta actualizar");
		}
		return "Clientes";
	}
}

//@RequestMapping(value="/Productos/guardar", method=RequestMethod.POST)
//public String saveProductos(@ModelAttribute("producto") Producto adminForm, Model model, RedirectAttributes ra) {
//	model.addAttribute("adminForm", adminForm);
//	System.out.println("Esto es lo que se graba: "+ adminForm.getProd_nom());
//	if(adminForm.getProd_nom()!="") {
//		prodService.save(adminForm);
//	}
//	return "redirect:/Productos";
//}

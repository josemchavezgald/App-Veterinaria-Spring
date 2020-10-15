package com.fullstack.appvet.controller;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.fullstack.appvet.modelo.Duenio;
import com.fullstack.appvet.modelo.Ciudad;
import com.fullstack.appvet.modelo.Mascota;
import com.fullstack.appvet.repository.ICiudadRepository;
import com.fullstack.appvet.repository.IDuenioRepository;
import com.fullstack.appvet.repository.IMascotaRepository;

@Controller
public class WebController {

	@Autowired
	private IDuenioRepository repoDuenio;
	
	@Autowired
	private IMascotaRepository repoMascota;
	
	@Autowired
	private ICiudadRepository repoCiudad;
	
	@ModelAttribute("dueño")
	public Duenio setDuenio() {
		
		return new Duenio();
	}
	
	@ModelAttribute("mascota")
	public Mascota setMascota() {
		return new Mascota();
	}
	
	@ModelAttribute("ciudades")
	public List<Ciudad> setCiudades(){
		return repoCiudad.findAll();
	}
	

		
	@GetMapping("/")
	public String getIndex()
	{
		return "index";
	}
	
	@GetMapping("/registroDueño")
	public String getRegistroDuenio()
	{
		return "registroDueño";
	}
	
	@GetMapping("/error")
	public String getError()
	{
		return "error";
	}
	
	@PostMapping(value = "agregarDueño")
	public String agregarDuenio(@Valid @ModelAttribute("dueño")Duenio cliente, BindingResult br, Model model) {
		if(br.hasErrors()) {
			return "registroDueño";
		}
		else {
			String rut = cliente.getRut();
			
			System.out.print(repoDuenio.findByRut(rut));
			if(repoDuenio.findByRut(rut).size() == 0 ) {
				System.out.print("pasa");
				repoDuenio.save(cliente);
				model.addAttribute("nuevoDuenio", true);
				model.addAttribute("dueño",cliente);
				return "registrarMascota";
				
			}else {
				System.out.print("Repetido");
				return "errorRut";
			}
		}
	}
	
	@PostMapping(value = "agregarMascota")
	public String agregarMascota(@Valid @ModelAttribute("mascota")Mascota mas, BindingResult br, Model model) {
		System.out.print(br.hasErrors());
		if(br.hasErrors()) {
			return "registrarMascota";
			
		}else {
			repoMascota.save(mas);
			model.addAttribute("mascota", mas);
			return "registroCorrecto";
		}

	}
	
	@PostMapping(value = "addMascota")
	public String addMascota(String id, Model model) {
		Duenio clienteBuscado = repoDuenio.getOne(Integer.parseInt(id));
		model.addAttribute("dueñoBuscado", clienteBuscado);
		return "ingresoMascotas";
	}
	
	@GetMapping("/listarDueños")
	public String listarEstudiantes(Model model) {
		List<Duenio> clientes = repoDuenio.findAllByOrderByNombreAsc();
		model.addAttribute("dueños", clientes);
		return "listarDueños";
	}
	
	
	@PostMapping("regVisita")
	public String registrar(String id, Model model) {
		Mascota mascotaBuscada = repoMascota.getOne(Integer.parseInt(id));
		model.addAttribute("mascotaBuscada",mascotaBuscada);
		return "registroVisita";
	}
	
	@PostMapping("registrarVisita")
	public String registrarVisita(@Valid @ModelAttribute("mascota")Mascota mas, BindingResult br,Model model) {
		if(br.hasErrors()) {
			return "registroVisita";
		}
		else {
			String mensaje = "La visita fue ingresada con exito";
			repoMascota.save(mas);
			Duenio clienteBuscado = repoDuenio.getOne(mas.getDuenio().getId());
			model.addAttribute("dueñoBuscado",clienteBuscado);
			model.addAttribute("updateCorrecto", mensaje);
			return "editarMascotas";
		}
	}
	
	
	
	@PostMapping("buscarDueñoRut")
	public String buscarDueñoRut(String rut, Model model) 
	{
		List<String> run = Arrays.asList(rut.split("-"));
		String digitos = run.get(0);
		model.addAttribute("dueños", repoDuenio.findByRut(digitos));
		return "listarDueños";
	}
	
	@PostMapping("buscarDueñoApellido")
	public String buscarDueñoNombre(String apellido, Model model) 
	{
		List<String> nombre_apellido = Arrays.asList(apellido.split(" "));
		System.out.println(nombre_apellido);
		if(nombre_apellido.size() == 1) {
			String apD= nombre_apellido.get(0);
			model.addAttribute("dueños", repoDuenio.findByApellido(apD));
		}else {
			String nombre = nombre_apellido.get(0);
			String apD = nombre_apellido.get(1);
			System.out.println(nombre);
			System.out.println(apellido);
			model.addAttribute("dueños", repoDuenio.findByNombreAndApellido(nombre, apD));
		}
		
		return "listarDueños";
	}
	
	
	@PostMapping(value="cargarDueño")
	public String cargarDueño(String id, Model model) {
		Duenio clienteBuscado = repoDuenio.getOne(Integer.parseInt(id));
		
		model.addAttribute("dueñoBuscado",clienteBuscado);
	
		return "editarDueño";
	}
	
	@PostMapping("updateDueño")
	public String actualizarDueño(@Valid @ModelAttribute("dueño") Duenio cliente, BindingResult br, Model model) {
		String id = Integer.toString(cliente.getId());
		
		if(br.hasErrors()) {
			return cargarDueño(id,model);
		}
		else {
			String mensaje = "Los datos del Dueño: "+cliente.getRut()+"-"+cliente.getDv() +" fueron actualizados exitosamente";
			repoDuenio.save(cliente);
			List<Duenio> clientes = repoDuenio.findAllByOrderByNombreAsc();
			model.addAttribute("dueños", clientes);
			model.addAttribute("updateCorrecto", mensaje);
			return "listarDueños";
		}
	}
		
	

	@PostMapping(value="cargarMascotasDueño")
	public String cargarDueñoMascotas(String id, Model model) {
		Duenio clienteBuscado = repoDuenio.getOne(Integer.parseInt(id));
		model.addAttribute("dueñoBuscado",clienteBuscado);
		
		return "editarMascotas";
	}

		
		
	
	
}

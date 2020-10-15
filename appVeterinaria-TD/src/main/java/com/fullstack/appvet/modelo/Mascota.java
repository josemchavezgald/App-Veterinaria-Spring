package com.fullstack.appvet.modelo;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
public class Mascota {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length = 50, nullable = false)
	@Size(min=1, max = 50, message ="Error: El campo debe tener entre 1 y 50 caracteres" )
	private String nombre;
	
	@Column(length = 50, nullable = false)
	@NotEmpty(message="ingrese fecha")
	private String fechaNacimiento;
	
	@Column(length = 50)
	private String descripcionVisita = "";
	
	@Column(length = 50)
	private String fechaVisita = "";
	
	@ManyToOne
	private Duenio duenio;
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getFechaNacimiento() {
		return fechaNacimiento;
	}


	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	

	public Duenio getDuenio() {
		return duenio;
	}


	public void setDuenio(Duenio duenio) {
		this.duenio = duenio;
	}

	

	public String getDescripcionVisita() {
		return descripcionVisita;
	}


	public void setDescripcionVisita(String descripcionVisita) {
		this.descripcionVisita = descripcionVisita;
	}


	public String getFechaVisita() {
		return fechaVisita;
	}


	public void setFechaVisita(String fechaVisita) {
		this.fechaVisita = fechaVisita;
	}


	@Override
	public String toString() {
		return "Mascota [id=" + id + ", nombre=" + nombre + ", fechaNacimiento=" + fechaNacimiento + "]";
	}
	
	
	
	
	
}

package com.fullstack.appvet.modelo;

import javax.persistence.Entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
public class Duenio {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotEmpty(message = "Error en el Rut. Debe rellenar el campo sin puntos\n")
	@Column(length=8, nullable = false) //name = nombre distinto en BD
	private String rut;

	@NotEmpty(message = "\nError en el Digito verificador. Debe rellenar el campo con un valor numerico o K")
	@Column(length=1, nullable = false) //name = nombre distinto en BD
	private String dv;
	
	@Column(length = 50, nullable = false)
	@Size(min=1, max = 50, message ="Error: El campo debe tener entre 1 y 50 caracteres" )
	private String nombre;
	
	@Column(length = 50, nullable = false)
	@Size( min= 1,max =50, message ="Error: El campo debe tener entre 1 y 50 caracteres" )
	private String apellido;
	
	@Column(length = 50, nullable = false)
	@NotEmpty(message = "Error: debe ingresar una dirección")
	@Size(min=1, max = 50, message ="Error: El campo debe tener entre 1 y 50 caracteres" )
	private String direccion;
	
	@Column(length = 50, nullable = false)
	@NotEmpty(message = "Debe elegir una ciudad")
	private String ciudad;
	
	@Column(length = 8, nullable = false)
	@Min(0)
	@Max(100000000)
	int telefono;
	
	@OneToMany(mappedBy="duenio")
	private List<Mascota> mascotas = new ArrayList<Mascota>();
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getDv() {
		return dv;
	}

	public void setDv(String dv) {
		this.dv = dv;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	
	public List<Mascota> getMascotas() {
		return mascotas;
	}

	public void setMascotas(List<Mascota> mascotas) {
		this.mascotas = mascotas;
	}

	@Override
	public String toString() {
		return "Duenio [id=" + id + ", rut=" + rut + ", dv=" + dv + ", nombre=" + nombre + ", apellido=" + apellido
				+ ", direccion=" + direccion + ", ciudad=" + ciudad + ", telefono=" + telefono + "]";
	}
	
	
	
	
}

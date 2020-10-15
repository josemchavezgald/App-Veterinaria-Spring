package com.fullstack.appvet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fullstack.appvet.modelo.Duenio;


public interface IDuenioRepository extends JpaRepository<Duenio,Integer>{

	
	List<Duenio> findByRut(String rut);
	
	List<Duenio> findAllByOrderByNombreAsc();
 	List<Duenio> findByApellido(String apellido);
  	List<Duenio> findByNombreAndApellido(String nombre, String apellido);

}


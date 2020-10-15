package com.fullstack.appvet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fullstack.appvet.modelo.Ciudad;

public interface ICiudadRepository extends JpaRepository<Ciudad,Integer> {

}

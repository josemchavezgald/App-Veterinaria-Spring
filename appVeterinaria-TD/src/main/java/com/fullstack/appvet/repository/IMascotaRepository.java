package com.fullstack.appvet.repository;


import org.springframework.data.jpa.repository.JpaRepository;


import com.fullstack.appvet.modelo.Mascota;

public interface IMascotaRepository extends JpaRepository<Mascota,Integer>{

}

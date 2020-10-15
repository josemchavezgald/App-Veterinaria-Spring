package com.fullstack.appvet;



import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.fullstack.appvet.modelo.Ciudad;
import com.fullstack.appvet.repository.ICiudadRepository;

@SpringBootTest
class AppVeterinariaTdApplicationTests {
	
	@Autowired
	private ICiudadRepository repoCiudad;
	
	@Test
	void contextLoads() {
		
		Ciudad c1 = new Ciudad();
		c1.setNombre("Arica");
		Ciudad c2 = new Ciudad();
		c2.setNombre("Iquique");
		Ciudad c3 = new Ciudad();
		c3.setNombre("Calama");
		Ciudad c4 = new Ciudad();
		c4.setNombre("Copiapo");
		Ciudad c5 = new Ciudad();
		c5.setNombre("Copiapo");
		Ciudad c6 = new Ciudad();
		c6.setNombre("Valparaiso");
		Ciudad c7 = new Ciudad();
		c7.setNombre("Santiago");
		Ciudad c8 = new Ciudad();
		c8.setNombre("Talca");
		Ciudad c9 = new Ciudad();
		c9.setNombre("Puerto Varas");
		Ciudad c10 = new Ciudad();
		c10.setNombre("Punta Arenas");
		
		repoCiudad.save(c1);
		repoCiudad.save(c2);
		repoCiudad.save(c3);
		repoCiudad.save(c4);
		repoCiudad.save(c5);
		repoCiudad.save(c6);
		repoCiudad.save(c7);
		repoCiudad.save(c8);
		repoCiudad.save(c9);
		repoCiudad.save(c10);
		
	}

}

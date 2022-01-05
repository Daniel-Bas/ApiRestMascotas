package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Mascota;
import com.example.demo.service.MascotaService;

@RestController
@RequestMapping("/mascotas")
public class MascotaController {
	
	@Autowired
	MascotaService mascotaService;
	
	@GetMapping("/lista")
	public ResponseEntity<List<Mascota>> list(){
		
		List<Mascota> list = mascotaService.lista();
		return new ResponseEntity(list, HttpStatus.OK);
	}
	

}

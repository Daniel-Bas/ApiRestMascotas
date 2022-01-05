package com.example.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Mascota;
import com.example.demo.repository.MascotaRepository;

@Service
@Transactional
public class MascotaService {
	
	@Autowired
	MascotaRepository mascotaRepository;
	
	public List<Mascota> lista(){
		return mascotaRepository.findAll();
	}

}

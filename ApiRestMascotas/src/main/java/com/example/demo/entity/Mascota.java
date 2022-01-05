package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mascota")
public class Mascota {
	@Id
	private int idmascota;
	private String nombre;
	private int tipo_mascota;
	private int propietario;
	
	
	
	
	
	
	public Mascota() {
	}

	public Mascota(int idmascota, String nombre, int tipo_mascota, int propietario) {
		this.idmascota = idmascota;
		this.nombre = nombre;
		this.tipo_mascota = tipo_mascota;
		this.propietario = propietario;
	}
	
	public int getIdmascota() {
		return idmascota;
	}
	public void setIdmascota(int idmascota) {
		this.idmascota = idmascota;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getTipo_mascota() {
		return tipo_mascota;
	}
	public void setTipo_mascota(int tipo_mascota) {
		this.tipo_mascota = tipo_mascota;
	}
	public int getPropietario() {
		return propietario;
	}
	public void setPropietario(int propietario) {
		this.propietario = propietario;
	}
	

}

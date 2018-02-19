package com.dawes.modelo;
// Generated 27-ene-2018 16:42:27 by Hibernate Tools 4.3.1.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Noticia generated by hbm2java
 */
@Entity
@Table(name = "noticia", catalog = "gamitour", uniqueConstraints = @UniqueConstraint(columnNames = "nombre"))
public class Noticia implements java.io.Serializable {

	private Integer idnoticia;
	private String nombre;
	private String texto;
	private Date fechaalta;
	private Date fechacaducidad;
	private String imagen;
	
	
	
	@Override
	public String toString() {
		return "Noticia [idnoticia=" + idnoticia + ", nombre=" + nombre + ", texto=" + texto + ", fechaalta="
				+ fechaalta + ", fechacaducidad=" + fechacaducidad + ", imagen=" + imagen + "]";
	}

	public Noticia() {
	}

	public Noticia(String nombre) {
		this.nombre = nombre;
	}

	public Noticia(String nombre, String texto, Date fechaalta, Date fechacaducidad, String imagen) {
		this.nombre = nombre;
		this.texto = texto;
		this.fechaalta = fechaalta;
		this.fechacaducidad = fechacaducidad;
		this.imagen = imagen;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idnoticia", unique = true, nullable = false)
	public Integer getIdnoticia() {
		return this.idnoticia;
	}

	public void setIdnoticia(Integer idnoticia) {
		this.idnoticia = idnoticia;
	}

	@Column(name = "nombre", unique = true, nullable = false, length = 60)
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Column(name = "texto", length = 200)
	public String getTexto() {
		return this.texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "fechaalta", length = 10)
	public Date getFechaalta() {
		return this.fechaalta;
	}

	public void setFechaalta(Date fechaalta) {
		this.fechaalta = fechaalta;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "fechacaducidad", length = 10)
	public Date getFechacaducidad() {
		return this.fechacaducidad;
	}

	public void setFechacaducidad(Date fechacaducidad) {
		this.fechacaducidad = fechacaducidad;
	}

	@Column(name = "imagen", length = 45)
	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

}

package com.dawes.modelo;
// Generated 27-ene-2018 16:42:27 by Hibernate Tools 4.3.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Comentario generated by hbm2java
 */
@Entity
@Table(name = "comentario")
public class Comentario implements java.io.Serializable {

	private Integer idcomentario;
	private Cliente cliente;
	private Multimedia multimedia;
	private String texto;

	
	
	
	
	@Override
	public String toString() {
		return "Comentario [idcomentario=" + idcomentario + ", cliente=" + cliente.getNick() + ", multimedia=" + multimedia.getTitulo()
				+ ", texto=" + texto + "]";
	}

	public Comentario() {
	}

	public Comentario(Cliente cliente, Multimedia multimedia) {
		this.cliente = cliente;
		this.multimedia = multimedia;
	}
	
	public Comentario(Cliente cliente, Multimedia multimedia, String texto) {
		this.cliente = cliente;
		this.multimedia = multimedia;
		this.texto = texto;
	}
	public Comentario(int idcomentario, String texto, Cliente cliente, Multimedia multimedia) {
		this.idcomentario = idcomentario;
		this.cliente = cliente;
		this.multimedia = multimedia;
		this.texto = texto;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idcomentario", unique = true, nullable = false)
	public Integer getIdcomentario() {
		return this.idcomentario;
	}

	public void setIdcomentario(Integer idcomentario) {
		this.idcomentario = idcomentario;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "cliente_idcliente", nullable = false)
	public Cliente getCliente() {
		return this.cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "multimedia_idmultimedia", nullable = false)
	public Multimedia getMultimedia() {
		return this.multimedia;
	}

	public void setMultimedia(Multimedia multimedia) {
		this.multimedia = multimedia;
	}

	@Column(name = "texto", length = 200)
	public String getTexto() {
		return this.texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

}

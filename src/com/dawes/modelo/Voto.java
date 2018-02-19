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
 * Voto generated by hbm2java
 */
@Entity
@Table(name = "voto", catalog = "gamitour")
public class Voto implements java.io.Serializable {

	private Integer idvoto;
	private Cliente cliente;
	private Multimedia multimedia;
	private Integer puntos;


	@Override
	public String toString() {
		return "Voto [idvoto=" + idvoto + ", cliente=" + cliente.getNick() + ", multimedia=" + multimedia.getTitulo() + ", puntos=" + puntos
				+ "]";
	}

	public Voto() {
	}

	public Voto(Cliente cliente, Multimedia multimedia) {
		this.cliente = cliente;
		this.multimedia = multimedia;
	}

	public Voto(Cliente cliente, Multimedia multimedia, Integer puntos) {
		this.cliente = cliente;
		this.multimedia = multimedia;
		this.puntos = puntos;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idvoto", unique = true, nullable = false)
	public Integer getIdvoto() {
		return this.idvoto;
	}

	public void setIdvoto(Integer idvoto) {
		this.idvoto = idvoto;
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

	@Column(name = "puntos")
	public Integer getPuntos() {
		return this.puntos;
	}

	public void setPuntos(Integer puntos) {
		this.puntos = puntos;
	}

}

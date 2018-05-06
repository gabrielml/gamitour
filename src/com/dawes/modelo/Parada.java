package com.dawes.modelo;
// Generated 27-ene-2018 16:42:27 by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Parada generated by hbm2java
 */
@Entity
@Table(name = "parada", catalog = "gamitour", uniqueConstraints = @UniqueConstraint(columnNames = "numeroParada"))
public class Parada implements java.io.Serializable {

	private Integer idparada;
	private Itinerario itinerario;
	private String nombre;
	private int numeroParada;
	private String ubicacion;
	private String historia;
	private String anecdotario;
	private String gastronomia;
	private String imagen;
	private Set<Pruebacultural> pruebaculturals = new HashSet<Pruebacultural>(0);
	private Set<Pruebadeportiva> pruebadeportivas = new HashSet<Pruebadeportiva>(0);

	@Override
	public String toString() {
		return "Parada [idparada=" + idparada + ", itinerario=" + itinerario.getNombre() + ", nombre=" + nombre + ", numeroParada="
				+ numeroParada + ", ubicacion=" + ubicacion + ", historia=" + historia + ", anecdotario=" + anecdotario
				+ ", gastronomia=" + gastronomia + ", imagen=" + imagen + ", pruebaculturals=" + pruebaculturals
				+ ", pruebadeportivas=" + pruebadeportivas + "]";
	}

	public Parada() {
	}

	public Parada(Itinerario itinerario, int numeroParada) {
		this.itinerario = itinerario;
		this.numeroParada = numeroParada;
	}

	public Parada(Itinerario itinerario, String nombre, int numeroParada, String ubicacion, String historia,
			String anecdotario, String gastronomia, String imagen, Set pruebaculturals, Set pruebadeportivas) {
		this.itinerario = itinerario;
		this.nombre = nombre;
		this.numeroParada = numeroParada;
		this.ubicacion = ubicacion;
		this.historia = historia;
		this.anecdotario = anecdotario;
		this.gastronomia = gastronomia;
		this.imagen = imagen;
		this.pruebaculturals = pruebaculturals;
		this.pruebadeportivas = pruebadeportivas;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idparada", unique = true, nullable = false)
	public Integer getIdparada() {
		return this.idparada;
	}

	public void setIdparada(Integer idparada) {
		this.idparada = idparada;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "itinerario_iditinerario", nullable = false)
	public Itinerario getItinerario() {
		return this.itinerario;
	}

	public void setItinerario(Itinerario itinerario) {
		this.itinerario = itinerario;
	}

	@Column(name = "nombre", length = 60)
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Column(name = "numeroParada", unique = true, nullable = false)
	public int getNumeroParada() {
		return this.numeroParada;
	}

	public void setNumeroParada(int numeroParada) {
		this.numeroParada = numeroParada;
	}

	@Column(name = "ubicacion", length = 45)
	public String getUbicacion() {
		return this.ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	@Column(name = "historia", length = 200)
	public String getHistoria() {
		return this.historia;
	}

	public void setHistoria(String historia) {
		this.historia = historia;
	}

	@Column(name = "anecdotario", length = 200)
	public String getAnecdotario() {
		return this.anecdotario;
	}

	public void setAnecdotario(String anecdotario) {
		this.anecdotario = anecdotario;
	}

	@Column(name = "gastronomia", length = 200)
	public String getGastronomia() {
		return this.gastronomia;
	}

	public void setGastronomia(String gastronomia) {
		this.gastronomia = gastronomia;
	}

	@Column(name = "imagen", length = 45)
	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "parada")
	public Set<Pruebacultural> getPruebaculturals() {
		return this.pruebaculturals;
	}

	public void setPruebaculturals(Set<Pruebacultural> pruebaculturals) {
		this.pruebaculturals = pruebaculturals;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "parada")
	public Set<Pruebadeportiva> getPruebadeportivas() {
		return this.pruebadeportivas;
	}

	public void setPruebadeportivas(Set<Pruebadeportiva> pruebadeportivas) {
		this.pruebadeportivas = pruebadeportivas;
	}
}
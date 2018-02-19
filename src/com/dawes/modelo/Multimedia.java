package com.dawes.modelo;
// Generated 27-ene-2018 16:42:27 by Hibernate Tools 4.3.1.Final

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Multimedia generated by hbm2java
 */
@Entity
@Table(name = "multimedia", catalog = "gamitour", uniqueConstraints = @UniqueConstraint(columnNames = "titulo"))
public class Multimedia implements java.io.Serializable {

	private Integer idmultimedia;
	private Cliente cliente;
	private Pruebadeportiva pruebadeportiva;
	private Date fecha;
	private String comentario;
	private String imagen;
	private String video;
	private Integer puntosacumulados;
	private String titulo;
	private Set<Comentario> comentarios = new HashSet<Comentario>(0);
	private Set<Voto> votos = new HashSet<Voto>(0);

	
	
	
	
	@Override
	public String toString() {
		return "Multimedia [idmultimedia=" + idmultimedia + ", cliente=" + cliente.getNick() + ", pruebadeportiva="
				+ pruebadeportiva.getNombre() + ", fecha=" + fecha + ", comentario=" + comentario + ", imagen=" + imagen
				+ ", video=" + video + ", puntosacumulados=" + puntosacumulados + ", titulo=" + titulo
				+ ", comentarios=" + comentarios + ", votos=" + votos + "]";
	}

	public Multimedia() {
	}

	public Multimedia(Cliente cliente, Pruebadeportiva pruebadeportiva, String titulo) {
		this.cliente = cliente;
		this.pruebadeportiva = pruebadeportiva;
		this.titulo = titulo;
	}

	public Multimedia(Cliente cliente, Pruebadeportiva pruebadeportiva, Date fecha, String comentario, String imagen,
			String video, Integer puntosacumulados, String titulo, Set<Comentario> comentarios, Set<Voto> votos) {
		this.cliente = cliente;
		this.pruebadeportiva = pruebadeportiva;
		this.fecha = fecha;
		this.comentario = comentario;
		this.imagen = imagen;
		this.video = video;
		this.puntosacumulados = puntosacumulados;
		this.titulo = titulo;
		this.comentarios = comentarios;
		this.votos = votos;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idmultimedia", unique = true, nullable = false)
	public Integer getIdmultimedia() {
		return this.idmultimedia;
	}

	public void setIdmultimedia(Integer idmultimedia) {
		this.idmultimedia = idmultimedia;
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
	@JoinColumn(name = "pruebaDeportiva_idpruebadeportiva", nullable = false)
	public Pruebadeportiva getPruebadeportiva() {
		return this.pruebadeportiva;
	}

	public void setPruebadeportiva(Pruebadeportiva pruebadeportiva) {
		this.pruebadeportiva = pruebadeportiva;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "fecha", length = 10)
	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	@Column(name = "comentario", length = 60)
	public String getComentario() {
		return this.comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	@Column(name = "imagen", length = 60)
	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	@Column(name = "video", length = 60)
	public String getVideo() {
		return this.video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	@Column(name = "puntosacumulados")
	public Integer getPuntosacumulados() {
		return this.puntosacumulados;
	}

	public void setPuntosacumulados(Integer puntosacumulados) {
		this.puntosacumulados = puntosacumulados;
	}

	@Column(name = "titulo", unique = true, nullable = false, length = 45)
	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "multimedia")
	public Set<Comentario> getComentarios() {
		return this.comentarios;
	}

	public void setComentarios(Set<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "multimedia")
	public Set<Voto> getVotos() {
		return this.votos;
	}

	public void setVotos(Set<Voto> votos) {
		this.votos = votos;
	}

}

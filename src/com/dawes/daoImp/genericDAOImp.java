package com.dawes.daoImp;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.dawes.dao.genericDAO;
import com.dawes.modelo.Actividad;
import com.dawes.modelo.Cliente;
import com.dawes.modelo.Comentario;
import com.dawes.modelo.Itinerario;
import com.dawes.modelo.Multimedia;
import com.dawes.modelo.Noticia;
import com.dawes.modelo.Parada;
import com.dawes.modelo.Premio;
import com.dawes.modelo.Pruebacultural;
import com.dawes.modelo.Pruebadeportiva;
import com.dawes.modelo.Rol;
import com.dawes.modelo.Voto;

public class genericDAOImp implements genericDAO{
	
	
	SessionFactory sf;
	public genericDAOImp(SessionFactory sf){
		this.sf = sf;
	}
	
	@Override
	public void insertar(Object insertar) {
		
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		sf.getCurrentSession().save(insertar);
		sf.getCurrentSession().getTransaction().commit();
		sf.getCurrentSession().close();
	}
	
	@Override
	public void borrar(Object borrar) {
		
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		sf.getCurrentSession().delete(borrar);
		sf.getCurrentSession().getTransaction().commit();
		sf.getCurrentSession().close();
	}
	@Override
	public void update(Object update) {
		
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		sf.getCurrentSession().update(update);
		sf.getCurrentSession().getTransaction().commit();
		sf.getCurrentSession().close();
	}
	@Override
	public Object getDetalleNoticia(String busqueda) {
		
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT n FROM Noticia n where nombre=:nombre");
		q.setParameter("nombre", busqueda);
		Noticia noticia = (Noticia) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();
		
		return noticia;
	}
	
	@Override
	public Object getDetalleRol(String busqueda) {
		
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT r FROM Rol r where nombre=:nombre");
		q.setParameter("nombre", busqueda);
		Rol rol = (Rol) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();
					
		return rol;
	}
	@Override
	public Object getDetalleCliente(String busqueda) {
		
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT c FROM Cliente c where nick=:nick");
		q.setParameter("nick", busqueda);
		Cliente cliente = (Cliente) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();
						
		return cliente;
	}
	

	@Override
	public Object getDetalleComentario(int busqueda) {
		// TODO Auto-generated method stub
		
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT c FROM Comentario c where idcomentario=:idcomentario");
		q.setParameter("idcomentario", busqueda);
		Comentario comentario = (Comentario) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();
								
		return comentario;
	}

	@Override
	public Object getDetalleVoto(int busqueda) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT v FROM Voto v where idvoto=:idvoto");
		q.setParameter("idvoto", busqueda);
		Voto voto = (Voto) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();
										
		return voto;
	}

	@Override
	public Object getDetalleMultimedia(String busqueda) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT m FROM Multimedia m where titulo=:titulo");
		q.setParameter("titulo", busqueda);
		Multimedia multimedia = (Multimedia) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();
												
		return multimedia;
	}

	@Override
	public Object getDetallePremio(String busqueda) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT p FROM Premio p where nombre=:nombre");
		q.setParameter("nombre", busqueda);
		Premio premio = (Premio) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();										
		return premio;
	}

	@Override
	public Object getDetalleActividad(String busqueda) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT a FROM Actividad a where nombre=:nombre");
		q.setParameter("nombre", busqueda);
		Actividad actividad = (Actividad) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();										
		return actividad;
	}

	@Override
	public Object getDetalleItinerario(String busqueda) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT it FROM Itinerario it where nombre=:nombre");
		q.setParameter("nombre", busqueda);
		Itinerario itinerario = (Itinerario) q.getSingleResult();	
		sf.getCurrentSession().getTransaction().commit();										
		return itinerario;
	}

	@Override
	public Object getDetalleParada(int numeroParada) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT pa FROM Parada pa where numeroParada=:numeroParada");
		q.setParameter("numeroParada", numeroParada);
		Parada parada = (Parada) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();										
		return parada;
	}

	@Override
	public Object getDetallePruebaCultural(String busqueda) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT prc FROM Pruebacultural prc where nombre=:nombre");
		q.setParameter("nombre", busqueda);
		Pruebacultural pruebac = (Pruebacultural) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();										
		return pruebac;
	}

	@Override
	public Object getDetallePruebaDeportiva(String busqueda) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT prd FROM Pruebadeportiva prd where nombre=:nombre");
		q.setParameter("nombre", busqueda);
		Pruebadeportiva pruebad = (Pruebadeportiva) q.getSingleResult();
		sf.getCurrentSession().getTransaction().commit();										
		return pruebad;
	}
/******************************************/
	@Override
	public List<Noticia> getMostrarNoticias() {
		// TODO Auto-generated method stub
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(n.idnoticia, n.nombre, n.texto, n.fechaalta, n.fechacaducidad, n.imagen) FROM Noticia as n");
		List<Noticia> listado= q.list();
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Rol> getMostrarRoles() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new Rol(r.nombre) FROM Rol as r ");
		List<Rol> listado= q.getResultList();
		
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Cliente> getMostrarClientes() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(c.idcliente, c.nombre, c.apellidos,c.fechanacimiento, c.email, c.password, c.telefono, c.direccion, c.codigopostal, c.avatar, c.puntosacumulados, c.fecharegistro, c.rol.idrol, c.nick) FROM Cliente as c");
		List<Cliente> listado= q.list();
		
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Comentario> getMostrarComentarios() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(c.idcomentario, c.texto, c.cliente.idcliente, c.multimedia.idmultimedia) FROM Comentario as c");
		List<Comentario> listado= q.list();
		
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Voto> getMostrarVotos() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(v.idvoto, v.puntos, v.cliente.nick, v.multimedia.titulo) FROM Voto as v");
		List<Voto> listado= q.list();
		
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Premio> getMostrarPremios() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(p.idpremio, p.nombre, p.descripcion, p.imagen, p.fechaactivacion, p.fechaconsumo, p.puntos, p.cliente.idcliente) FROM Premio as p");
		List<Premio> listado= q.list();
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Actividad> getMostrarActividades() {
		sf.getCurrentSession().beginTransaction();
		
		Query q = sf.getCurrentSession().createQuery("SELECT new list(a.idactividad,a.nombre,a.fechainicio,a.fechafin,a.ubicacion,a.numparticipantes,a.precio,a.imagen,a.puntos) FROM Actividad as a");
		List<Actividad> listado= q.list();
		
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Itinerario> getMostrarItinerarios() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(i.iditinerario, i.nombre, i.categoria, i.duracion, i.ubicacion) FROM Itinerario as i");
		List<Itinerario> listado= q.list();
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Parada> getMostrarParadas() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(p.idparada, p.nombre, p.numeroParada, p.ubicacion, p.historia, p.anecdotario, p.gastronomia, p.imagen, p.itinerario.iditinerario) FROM Parada as p");
		List<Parada> listado= q.list();
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Pruebacultural> getMostrarPruebasCultural() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(pc.idpruebacultural,pc.nombre,pc.pregunta,pc.respuesta,pc.puntos,pc.parada.idparada) FROM Pruebacultural as pc");
		List<Pruebacultural> listado= q.list();
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Pruebadeportiva> getMostrarPruebasDeportiva() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(pd.idpruebadeportiva, pd.nombre, pd.fechainicio, pd.fechafin, pd.explicacion, pd.puntos, pd.parada.idparada) FROM Pruebadeportiva as pd");
		List<Pruebadeportiva> listado= q.list();
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}

	@Override
	public List<Multimedia> getMostrarMultimedias() {
		sf.getCurrentSession().beginTransaction();
		Query q = sf.getCurrentSession().createQuery("SELECT new list(m.idmultimedia,m.fecha,m.comentario,m.imagen,m.video,m.cliente.idcliente,m.pruebadeportiva.idpruebadeportiva,m.puntosacumulados,m.titulo ) FROM Multimedia as m");
		List<Multimedia> listado= q.list();
		sf.getCurrentSession().getTransaction().commit();										
		return listado;
	}
}
	
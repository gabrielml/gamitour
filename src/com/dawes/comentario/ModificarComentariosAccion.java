package com.dawes.comentario;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Comentario;
import com.dawes.service.ServiceGenericDAO;
import com.dawes.serviceImp.ServiceGenericDAOImp;
import com.dawes.util.Accion;

public class ModificarComentariosAccion extends Accion{

	@Override
	public String ejecutar(HttpServletRequest request, HttpServletResponse response) {
ServiceGenericDAO su = new ServiceGenericDAOImp();
		
		String idcomentarios = request.getParameter("idcomentario");
			int id2 = Integer.parseInt(idcomentarios);	

	
		Comentario c=(Comentario)su.getDetalleComentario(id2);
		//Actividad u=su.getDetalleActividad(request.getParameter("nombre"));
		//u.setNombre(request.getParameter("nombrenuevo"));
		//u.setPassword(request.getParameter("passwordnuevo"));
		//su.update(u);
		//request.setAttribute("listaUsuarios", su.getUsuarios());

		return "index.html";
	}

}

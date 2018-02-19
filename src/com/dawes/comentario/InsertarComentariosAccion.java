package com.dawes.comentario;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Cliente;
import com.dawes.modelo.Comentario;
import com.dawes.modelo.Multimedia;
import com.dawes.service.ServiceGenericDAO;
import com.dawes.serviceImp.ServiceGenericDAOImp;
import com.dawes.util.Accion;

public class InsertarComentariosAccion extends Accion{

	@Override
	public String ejecutar(HttpServletRequest request, HttpServletResponse response) {

		ServiceGenericDAO su = new ServiceGenericDAOImp();
		 
		Cliente cliente = (Cliente)su.getDetalleCliente(request.getParameter("nick"));	
		Multimedia multimedia = (Multimedia)su.getDetalleMultimedia(request.getParameter("titulo"));

		String texto=request.getParameter("texto");

		Comentario comentario = new Comentario(cliente,multimedia,texto);
		
		su.insertar(comentario);
		
		
		return "index.html";
	
	}

}

package com.dawes.itinerario;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Itinerario;
import com.dawes.service.ServiceGenericDAO;
import com.dawes.serviceImp.ServiceGenericDAOImp;
import com.dawes.util.Accion;

public class BorrarItinerarioAccion extends Accion{

	@Override
	public String ejecutar(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		
		ServiceGenericDAO su = new ServiceGenericDAOImp();

		String titulo = request.getParameter("idBorrar");
		
		su.borrar((Itinerario)su.getDetalleItinerario(titulo));
		
	
		
		return "index.html";
	}

}

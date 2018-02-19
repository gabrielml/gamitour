package com.dawes.voto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Cliente;
import com.dawes.modelo.Multimedia;
import com.dawes.modelo.Voto;
import com.dawes.service.ServiceGenericDAO;
import com.dawes.serviceImp.ServiceGenericDAOImp;
import com.dawes.util.Accion;

public class InsertarVotosAccion extends Accion{

	@Override
	public String ejecutar(HttpServletRequest request, HttpServletResponse response) {

		ServiceGenericDAO su = new ServiceGenericDAOImp();
		 
		Cliente cliente = (Cliente)su.getDetalleCliente(request.getParameter("nick"));	
		
		Multimedia multimedia = (Multimedia)su.getDetalleMultimedia(request.getParameter("titulo"));
		
		String convertir=request.getParameter("puntos");
		Integer puntos= Integer.valueOf(convertir);
		
	
		Voto votos = new Voto(cliente,multimedia,puntos);
		
		su.insertar(votos);
		
		return "index.html";
	
	}



}

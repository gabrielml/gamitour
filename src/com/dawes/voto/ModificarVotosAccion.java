package com.dawes.voto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dawes.modelo.Voto;
import com.dawes.service.ServiceGenericDAO;
import com.dawes.serviceImp.ServiceGenericDAOImp;
import com.dawes.util.Accion;

public class ModificarVotosAccion extends Accion{

	@Override
	public String ejecutar(HttpServletRequest request, HttpServletResponse response) {
ServiceGenericDAO su = new ServiceGenericDAOImp();
		
		String idvotos = request.getParameter("idvoto");
		int id1 = Integer.parseInt(idvotos);	



	
		Voto v=(Voto)su.getDetalleVoto(id1);
		//Actividad u=su.getDetalleActividad(request.getParameter("nombre"));
		//u.setNombre(request.getParameter("nombrenuevo"));
		//u.setPassword(request.getParameter("passwordnuevo"));
		//su.update(u);
		//request.setAttribute("listaUsuarios", su.getUsuarios());

		return "index.html";
	}

}

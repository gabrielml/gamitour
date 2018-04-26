package com.dawes.voto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Cliente;
import com.dawes.modelo.Multimedia;
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

		Voto v = (Voto) su.getDetalleVoto(id1);
		
		Cliente c = (Cliente) su.getDetalleCliente(request.getParameter("nombreClienteNuevo"));
		v.setCliente(c);
		
		Multimedia mult = (Multimedia) su.getDetalleMultimedia(request.getParameter("multimediaNuevo"));
		v.setMultimedia(mult);
		
		String puntos = request.getParameter("puntosNuevo");
		int puntosint = Integer.parseInt(puntos);
		
		v.setPuntos(puntosint);
		
		su.update(v);
		
		
		return "index.html";
	}

}

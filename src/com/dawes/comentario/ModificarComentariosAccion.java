package com.dawes.comentario;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Actividad;
import com.dawes.modelo.Cliente;
import com.dawes.modelo.Comentario;
import com.dawes.modelo.Multimedia;
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
		System.out.println("busco clientes :"+ request.getParameter("nombreClienteNuevo"));
		Cliente cli = (Cliente) su.getDetalleCliente(request.getParameter("nombreClienteNuevo"));
		c.setCliente(cli);
		
		c.setTexto(request.getParameter("textoNuevo"));
		
		Multimedia mult = (Multimedia) su.getDetalleMultimedia(request.getParameter("multimediaNuevo"));
		c.setMultimedia(mult);

		su.update(c);
	

		return "index.html";
	}

}

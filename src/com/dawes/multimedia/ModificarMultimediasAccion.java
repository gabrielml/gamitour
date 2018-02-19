package com.dawes.multimedia;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Multimedia;
import com.dawes.service.ServiceGenericDAO;
import com.dawes.serviceImp.ServiceGenericDAOImp;
import com.dawes.util.Accion;

public class ModificarMultimediasAccion extends Accion {

	@Override
	public String ejecutar(HttpServletRequest request, HttpServletResponse response) {
ServiceGenericDAO su = new ServiceGenericDAOImp();
		
		


	Multimedia m=(Multimedia)su.getDetalleMultimedia(request.getParameter("titulo"));
		m.setCliente(su.getDetalleCliente(request.getParameter("nombreClienteNuevo")));
		m.setPruebadeportiva(su.getDetallePruebaDeportiva(request.getParameter("nombrepuebadepNuevo")));
		
		c.setNick(request.getParameter("nickNuevo"));
		Date fecha = null;
		try {
			String Fecha = request.getParameter("fechaNueva");
			SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
			String strFecha = Fecha;
			fecha = formatoDelTexto.parse(strFecha);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		m.setComentario(request.getParameter("comentarioNuevo"));
		m.setImagen(request.getParameter("imagenNueva"));
		m.setVideo(request.getParameter("videoNuevo"));
		m.setPuntosacumulados("puntosacumuladosNuevo");
		m.setTitulo("tituloNuevo");
		
		su.update(m);
		//request.setAttribute("listaUsuarios", su.getUsuarios());

		return "index.html";
		
	
	}

}

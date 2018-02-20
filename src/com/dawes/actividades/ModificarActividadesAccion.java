package com.dawes.actividades;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.modelo.Actividad;
import com.dawes.modelo.Cliente;
import com.dawes.service.ServiceGenericDAO;
import com.dawes.serviceImp.ServiceGenericDAOImp;
import com.dawes.util.Accion;

public class ModificarActividadesAccion extends Accion{

	@Override
	public String ejecutar(HttpServletRequest request, HttpServletResponse response) {

		ServiceGenericDAO su = new ServiceGenericDAOImp();
		
		
		
		
		
		Actividad a=(Actividad)su.getDetalleActividad("nombre");		
		a.setNombre(request.getParameter("nombreNuevoA"));
		
		Date fecha = null;
		try {
			String fechaInicio = request.getParameter("fechaNueva");
			SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
			String strFecha = fechaInicio;
			fecha = formatoDelTexto.parse(strFecha);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Date fechaFin = null;
		try {
			String fechaFinal = request.getParameter("fechaFinNueva");
			SimpleDateFormat formatoDelTexto = new SimpleDateFormat("yyyy-MM-dd");
			String strFecha = fechaFinal;
			fechaFin = formatoDelTexto.parse(strFecha);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		a.setUbicacion(request.getParameter("ubicacionNueva"));
		String nCambio = request.getParameter("numparNuevo");
		Integer numero = Integer.parseInt(nCambio);
		a.setNumparticipantes(numero);
		String pCambio = request.getParameter("precioNuevo");
		Float precio = Float.parseFloat(pCambio);
		a.setPrecio(precio);
		a.setImagen(request.getParameter("imagenNueva"));
	
		su.update(a);
		//request.setAttribute("listaUsuarios", su.getUsuarios());

		return "index.html";
		
	
		
	}

}

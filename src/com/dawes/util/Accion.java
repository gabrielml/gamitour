package com.dawes.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dawes.actividades.BorrarActividadesAccion;
import com.dawes.actividades.InsertarActividadAccion;
import com.dawes.actividades.ModificarActividadesAccion;
import com.dawes.actividades.MostrarActividadAccion;
import com.dawes.actividades.MostrarActividadesAccion;
import com.dawes.comentario.BorrarComentarioAccion;
import com.dawes.comentario.InsertarComentariosAccion;
import com.dawes.comentario.ModificarComentariosAccion;
import com.dawes.comentario.MostrarComentarioAccion;
import com.dawes.comentario.MostrarComentariosAccion;
import com.dawes.itinerario.BorrarItinerarioAccion;
import com.dawes.itinerario.InsertarItinerarioAccion;
import com.dawes.itinerario.ModificarItinerariosAccion;
import com.dawes.itinerario.MostrarItinerarioAccion;
import com.dawes.itinerario.MostrarItinerariosAccion;
import com.dawes.multimedia.BorrarMultimediaAccion;
import com.dawes.multimedia.InsertarMultimediasAccion;
import com.dawes.multimedia.ModificarMultimediasAccion;
import com.dawes.multimedia.MostrarMultimediaAccion;
import com.dawes.multimedia.MostrarMultimediasAccion;
import com.dawes.noticia.BorrarNoticiaAccion;
import com.dawes.noticia.InsertarNoticiaAccion;
import com.dawes.noticia.MostrarNoticiaAccion;
import com.dawes.noticia.MostrarNoticiasAccion;
import com.dawes.pCultural.BorrarPCulturalAccion;
import com.dawes.pCultural.InsertarPCultural;
import com.dawes.pCultural.ModificarPCulturalAccion;
import com.dawes.pCultural.MostrarPCulturalAccion;
import com.dawes.pCultural.MostrarPCulturalesAccion;
import com.dawes.pDeportiva.BorrarPDeportivaAccion;
import com.dawes.pDeportiva.InsertarPDeportiva;
import com.dawes.pDeportiva.ModificarPDeportivaAccion;
import com.dawes.pDeportiva.MostrarPDeportivaAccion;
import com.dawes.pDeportiva.MostrarPDeportivasAccion;
import com.dawes.parada.BorrarParadaAccion;
import com.dawes.parada.InsertarParadaAccion;
import com.dawes.parada.ModificarParadasAccion;
import com.dawes.parada.MostrarParadaAccion;
import com.dawes.parada.MostrarParadasAccion;
import com.dawes.premio.BorrarPremioAccion;
import com.dawes.premio.InsertarPremioAccion;
import com.dawes.premio.MostrarPremioAccion;
import com.dawes.premio.MostrarPremiosAccion;
import com.dawes.rol.BorrarRolAccion;
import com.dawes.rol.InsertarRolAccion;
import com.dawes.rol.MostrarRolAccion;
import com.dawes.rol.MostrarRolesAccion;
import com.dawes.usuarios.BorrarUsuarioAccion;
import com.dawes.usuarios.InsertarUsuariosAccion;
import com.dawes.usuarios.ModificarUsuariosAccion;
import com.dawes.usuarios.MostrarUsuarioAccion;
import com.dawes.usuarios.MostrarUsuariosAccion;
import com.dawes.voto.BorrarVotoAccion;
import com.dawes.voto.InsertarVotosAccion;
import com.dawes.voto.ModificarVotosAccion;
import com.dawes.voto.MostrarVotoAccion;
import com.dawes.voto.MostrarVotosAccion;


public abstract class Accion {
	
	//metodo abstracto ejecutar
	//le paso lo que recupera del servlet, peticion y respuesta.
	public abstract String ejecutar(HttpServletRequest request, HttpServletResponse response);
	
	//clase -->seleccion por el cliente.
	public static Accion getAccion(String tipo){
		
		/*ACTIVIDADES*/
		if(tipo.equals("InsertarActividades")){
			return new InsertarActividadAccion();
		}
		if(tipo.equals("MostrarActividad")){
			return new MostrarActividadAccion();
		}
		if(tipo.equals("MostrarActividades")){
			return new MostrarActividadesAccion();
		}
		if(tipo.equals("BorrarActividad")){
			return new BorrarActividadesAccion();
		}
		if(tipo.equals("ModificarActividades")){
			return new ModificarActividadesAccion();
		}
		
		/*COMENTARIOS*/
		if(tipo.equals("InsertarComentarios")){
			return new InsertarComentariosAccion();
		}
		if(tipo.equals("MostrarComentario")){
			return new MostrarComentarioAccion();
		}
		if(tipo.equals("MostrarComentarios")){
			return new MostrarComentariosAccion();
		}
		if(tipo.equals("BorrarComentario")){
			return new BorrarComentarioAccion();
		}
		if(tipo.equals("ModificarComentarios")){
			return new ModificarComentariosAccion();
		}
		
		/*ITINERARIOS*/
		if(tipo.equals("InsertarItinerario")){
			return new InsertarItinerarioAccion();
		}
		if(tipo.equals("MostrarItinerario")){
			return new MostrarItinerarioAccion();
		}
		if(tipo.equals("MostrarItinerarios")){
			return new MostrarItinerariosAccion();
		}
		if(tipo.equals("BorrarItinerario")){
			return new BorrarItinerarioAccion();
		}
		if(tipo.equals("ModificarItinerarios")){
			return new ModificarItinerariosAccion();
		}
		
		/*MULTIMEDIAS*/
		if(tipo.equals("InsertarMultimedias")){
			return new InsertarMultimediasAccion();
		}
		if(tipo.equals("MostrarMultimedia")){
			return new MostrarMultimediaAccion();
		}
		if(tipo.equals("MostrarMultimedias")){
			return new MostrarMultimediasAccion();
		}
		if(tipo.equals("BorrarMultimedia")){
			return new BorrarMultimediaAccion();
		}
		if(tipo.equals("ModificarMultimedias")){
			return new ModificarMultimediasAccion();
		}
		
		/*NOTICIAS*/
		if(tipo.equals("InsertarNoticia")){
			return new InsertarNoticiaAccion();
		}
		if(tipo.equals("MostrarNoticia")){
			return new MostrarNoticiaAccion();
		}
		if(tipo.equals("MostrarNoticias")){
			return new MostrarNoticiasAccion();
		}
		if(tipo.equals("BorrarNoticia")){
			return new BorrarNoticiaAccion();
		}
		
		/*PARADAS*/
		if(tipo.equals("InsertarParada")) {
			return new InsertarParadaAccion();
		}
		if(tipo.equals("MostrarParada")) {
			return new MostrarParadaAccion();
		}
		if(tipo.equals("MostrarParadas")) {
			return new MostrarParadasAccion();
		}
		if(tipo.equals("BorrarParada")){
			return new BorrarParadaAccion();
		}
		if(tipo.equals("ModificarParadas")){
			return new ModificarParadasAccion();
		}
		
		/*PRUEBAS CULTURALES*/
		if(tipo.equals("InsertarPCultural")) {
			return new InsertarPCultural();
		}
		if(tipo.equals("MostrarPCultural")) {
			return new MostrarPCulturalAccion();
		}
		if(tipo.equals("MostrarPCulturales")) {
			return new MostrarPCulturalesAccion();
		}
		if(tipo.equals("BorrarPCultural")){
			return new BorrarPCulturalAccion();
		}
		if(tipo.equals("ModificarPCultural")){
			return new ModificarPCulturalAccion();
		}
		
		/*PRUEBAS DEPORTIVAS*/
		if(tipo.equals("InsertarPDeportiva")) {
			return new InsertarPDeportiva();
		}
		if(tipo.equals("MostrarPDeportiva")) {
			return new MostrarPDeportivaAccion();
		}
		if(tipo.equals("MostrarPDeportivas")) {
			return new MostrarPDeportivasAccion();
		}
		if(tipo.equals("BorrarPDeportiva")){
			return new BorrarPDeportivaAccion();
		}
		if(tipo.equals("ModificarPDeportiva")){
			return new ModificarPDeportivaAccion();
		}
		
		/*PREMIOS*/
		if(tipo.equals("InsertarPremio")){
			return new InsertarPremioAccion();
		}
		if(tipo.equals("MostrarPremio")){
			return new MostrarPremioAccion();
		}
		if(tipo.equals("MostrarPremios")){
			return new MostrarPremiosAccion();
		}
		if(tipo.equals("BorrarPremio")){
			return new BorrarPremioAccion();
		}
		
		/*ROLES*/
		if(tipo.equals("InsertarRol")){
			return new InsertarRolAccion();
		}
		if(tipo.equals("MostrarRol")){
			return new MostrarRolAccion();
		}
		if(tipo.equals("MostrarRoles")){
			return new MostrarRolesAccion();
		}
		if(tipo.equals("BorrarRol")){
			return new BorrarRolAccion();
		}
		
		/*USUARIOS*/
		if(tipo.equals("InsertarUsuarios")){
			return new InsertarUsuariosAccion();
		}
		if(tipo.equals("MostrarUsuarios")){
			return new MostrarUsuariosAccion();
		}
		if(tipo.equals("MostrarUsuario")){
			return new MostrarUsuarioAccion();
		}
		if(tipo.equals("BorrarUsuario")){
			return new BorrarUsuarioAccion();
		}
		if(tipo.equals("ModificarUsuarios")){
			return new ModificarUsuariosAccion();
		}
		
		/*VOTOS*/
		if(tipo.equals("InsertarVoto")){
			return new InsertarVotosAccion();
		}
		if(tipo.equals("MostrarVoto")){
			return new MostrarVotoAccion();
		}
		if(tipo.equals("MostrarVotos")){
			return new MostrarVotosAccion();
		}
		if(tipo.equals("BorrarVoto")){
			return new BorrarVotoAccion();
		}
		if(tipo.equals("ModificarVotos")){
			return new ModificarVotosAccion();
		}
				
		return null;
	}
}

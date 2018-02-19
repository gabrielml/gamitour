
package com.dawes.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtility {
	 
    public static SessionFactory sesionFactory;
  
    public static synchronized SessionFactory getSessionFactory() {
 
    	// implementaci�n del patr�n Singleton, para que no haya m�s que una 
    	// instancia de la factoria de sesiones.
        if (sesionFactory == null) {
            sesionFactory = new Configuration().configure().buildSessionFactory();
        }
        return sesionFactory;
    }
    
    public static void cerrarSesion() {
    	 if (sesionFactory != null) sesionFactory.close();
    }
}

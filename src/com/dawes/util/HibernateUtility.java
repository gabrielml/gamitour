
package com.dawes.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtility {

	public static SessionFactory sesionFactory;

	public static synchronized SessionFactory getSessionFactory() {

		// implementacion del patron Singleton, para que no haya mas que una
		// instancia de la factoria de sesiones.
		if (sesionFactory == null) {
			String foo = System.getenv("CLEARDB_DATABASE_URL");
			Configuration bar = new Configuration();
			if(foo != null) {
				bar.setProperty("hibernate.connection.url","jdbc:" + foo);
			}
			sesionFactory = bar.configure().buildSessionFactory();
		}
		return sesionFactory;
	}

	public static void cerrarSesion() {
		if (sesionFactory != null)
			sesionFactory.close();
	}
}

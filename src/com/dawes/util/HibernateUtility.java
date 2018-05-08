
package com.dawes.util;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtility {

	public static SessionFactory sesionFactory;

	public static synchronized SessionFactory getSessionFactory() throws URISyntaxException {

		// implementacion del patron Singleton, para que no haya mas que una
		// instancia de la factoria de sesiones.
		if (sesionFactory == null) {
			Map<String,String> jdbcUrlSettings = new HashMap<>();
			String databaseUrlWithUserAndPassword = System.getenv("DATABASE_URL");
			if (null != databaseUrlWithUserAndPassword) {
				URI databaseUri = new URI(databaseUrlWithUserAndPassword);
			    String username = databaseUri.getUserInfo().split(":")[0];
			    String password = databaseUri.getUserInfo().split(":")[1];
			    String databaseUrl = "jdbc:mysql://" + databaseUri.getHost() + databaseUri.getPath() + "?" + databaseUri.getQuery();
				
				jdbcUrlSettings.put("hibernate.connection.url", databaseUrl);
				jdbcUrlSettings.put("hibernate.connection.username", username);
				jdbcUrlSettings.put("hibernate.connection.password", password);
			}
			StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().
				    configure("hibernate.cfg.xml").
				    applySettings(jdbcUrlSettings).
				    build();
			sesionFactory = new Configuration().configure().buildSessionFactory(serviceRegistry);
		}
		return sesionFactory;
	}
    
	public static void cerrarSesion() {
		if (sesionFactory != null)
			sesionFactory.close();
	}
}

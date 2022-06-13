package com.example.lab7_20196324_20196044.Daos;

import com.example.lab7_20196324_20196044.beans.BActor;

import java.sql.*;
import java.util.ArrayList;

public class ActoresDao {
    private static String user = "root";
    private static String pass = "root";
    private static String url = "jdbc:mysql://localhost:3306/sakila?serverTimezone=America/Lima";


public ArrayList<BActor> obtenerActor(){
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    ArrayList<BActor> listaActor = new ArrayList<>();
    try (Connection conn = DriverManager.getConnection(url, user, pass);
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery("select actor.actor_id,actor.first_name,actor.last_name,film_actor.film_id,count(*) from actor\n" +
                 "INNER JOIN film_actor on (film_actor.actor_id=actor.actor_id)\n" +
                 "WHERE (first_name LIKE \"%LO%\") OR (last_name LIKE \"%LO%\")\n" +
                 "group by film_actor.actor_id\n" +
                 "having count(*)>20")) {

        while (rs.next()) {
            int id = rs.getInt(1);
            String nombre = rs.getString(2);
            String apellido= rs.getString(3);
            nombre=nombre.toLowerCase();
            apellido=apellido.toLowerCase();
            nombre=nombre.substring(0, 1).toUpperCase() + nombre.substring(1);
            apellido=apellido.substring(0, 1).toUpperCase() + apellido.substring(1);
            String nombre_completo= nombre + " "+apellido;
            int peliculas = rs.getInt(4);
            System.out.println(nombre_completo);
            listaActor.add(new BActor(id,nombre_completo,peliculas));
        }

    } catch (SQLException e) {
        System.out.println("Error de conexión SQL");
    }
    return listaActor;
}
}

package com.example.lab7_20196324_20196044.beans;

import java.sql.Date;

public class BActor {
    private int actor_id;
    private String nombre;

    private int peliculas_realizadas;

    public BActor(int actor_id, String nombre, int peliculas_realizadas) {
        this.actor_id = actor_id;
        this.nombre = nombre;
        this.peliculas_realizadas = peliculas_realizadas;
    }

    public int getActor_id() {
        return actor_id;
    }

    public void setActor_id(int actor_id) {
        this.actor_id = actor_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPeliculas_realizadas() {
        return peliculas_realizadas;
    }

    public void setPeliculas_realizadas(int peliculas_realizadas) {
        this.peliculas_realizadas = peliculas_realizadas;
    }
}


package com.example.lab7_20196324_20196044.Servlets;

import com.example.lab7_20196324_20196044.Daos.ActoresDao;
import com.example.lab7_20196324_20196044.beans.BActor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ActorServlet", value = "/listaActor")
public class ActorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ActoresDao actoresDao= new ActoresDao();
        ArrayList<BActor> listaActor=actoresDao.obtenerActor();
        request.setAttribute("listaActor",listaActor);
        RequestDispatcher view =request.getRequestDispatcher("listaActor.jsp");
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

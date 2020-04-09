/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fjn.edu.jevento.servlets;

import br.fjn.edu.jevento.domain.User;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jhonatan
 */
@WebServlet(urlPatterns = {"/auth", "/logout"})
public class AuthServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        
        List<User> users = (List<User>) getServletContext().getAttribute("users");
        
        for (User user: users){
            if (user.getEmail().equalsIgnoreCase(email)
                    && user.getPassword().equalsIgnoreCase(password)){
                HttpSession session = req.getSession();
                session.setAttribute("userLogged", user);
                resp.sendRedirect("Não_definida_ainda.jsp");
            }
        }
        
        req.setAttribute("loginErrorMsg", "Login Inválido! Informações enviadas estão incorretas");
        RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
        dispatcher.forward(req, resp);
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect("login.jsp");
    }
}

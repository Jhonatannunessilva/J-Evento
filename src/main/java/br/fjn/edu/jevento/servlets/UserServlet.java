/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fjn.edu.jevento.servlets;

import br.fjn.edu.jevento.domain.User;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jhonatan
 */
@WebServlet("/users")
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String operation = req.getParameter("operation");
        
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        
        ServletContext context = getServletContext();
        List<User> users = (List<User>) context.getAttribute("users");
        
        if (users == null) {
            users = new LinkedList<User>();
        }
        
        if (operation == "PUT"){
            String id = req.getParameter("id");
            
            for (User user : users) {
                if(user.getId().equalsIgnoreCase(id)){
                    user.setName(name);
                    user.setEmail(email);
                    user.setPassword(password);
                    break;
                }
            }
        }else {
            users.add(new User(name, email, password));
        }
        context.setAttribute("users", users);
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> users = (List<User>) getServletContext().getAttribute("users");
        String userId = req.getParameter("userId");
        
        for (User user : users) {
            if(user.getId().equalsIgnoreCase(userId)){
                req.setAttribute("userToUpdate", user);
                break;
            }
        }
        
        req.getRequestDispatcher("user/update.jsp").forward(req, resp);
    }
}

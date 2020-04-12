/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fjn.edu.jevento.servlets;

import br.fjn.edu.jevento.domain.Customer;
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
@WebServlet("/customers")
public class CustomerServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String operation = req.getParameter("operation");
        
        String name = req.getParameter("name");
        String cpf = req.getParameter("cpf");
        String phone_number = req.getParameter("phone_number");
        String email = req.getParameter("email");
        
        ServletContext context = getServletContext();
        List<Customer> customers = (List<Customer>) context.getAttribute("customers");
        
        if (customers == null) {
            customers = new LinkedList<Customer>();
        }
        
        if (operation == "PUT"){
            String id = req.getParameter("id");
            
            for (Customer customer : customers) {
                if(customer.getId().equalsIgnoreCase(id)){
                    customer.setName(name);
                    customer.setCpf(cpf);
                    customer.setPhone_number(phone_number);
                    customer.setEmail(email);
                    break;
                }
            }
        }else {
            customers.add(new Customer(name, cpf, phone_number, email));
        }
        context.setAttribute("customers", customers);
        resp.sendRedirect("home.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customers = (List<Customer>) getServletContext().getAttribute("customers");
        String customerId = req.getParameter("customerId");
        
        for (Customer customer : customers) {
            if(customer.getId().equalsIgnoreCase(customerId)){
                req.setAttribute("customerToUpdate", customer);
                break;
            }
        }
        
        req.getRequestDispatcher("customer/update.jsp").forward(req, resp);
    }
}
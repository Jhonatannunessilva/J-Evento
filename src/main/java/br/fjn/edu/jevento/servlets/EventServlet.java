/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fjn.edu.jevento.servlets;

import br.fjn.edu.jevento.domain.Address;
import br.fjn.edu.jevento.domain.Customer;
import br.fjn.edu.jevento.domain.Event;
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
@WebServlet("/events")
public class EventServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = getServletContext();
        String operation = req.getParameter("operation");
        
        List<Customer> customers = (List<Customer>) context.getAttribute("customers");
        
        Customer customerToEvent = new Customer();
        String name_customer = req.getParameter("name_customer");
        String cpf = req.getParameter("cpf");
        String phone_number = req.getParameter("phone_number");
        String email = req.getParameter("email");
        
        for (Customer customer : customers) {
            if(customer.getCpf().equalsIgnoreCase(cpf)){
                customerToEvent = customer;
                break;
            }
        }
        
        if (customerToEvent.getId() == null){
            customerToEvent = new Customer(name_customer, cpf, phone_number, email);
            customers.add(customerToEvent);
        }
        
        String street =  req.getParameter("street");
        String neighborhood =  req.getParameter("neighborhood");
        String number =  req.getParameter("number");
        String city =  req.getParameter("city");
        
        Address address = new Address(street, neighborhood, number, city);
        
        List<Event> events = (List<Event>) context.getAttribute("events");
        
        String name_event = req.getParameter("name");
        float value = Float.parseFloat(req.getParameter("value"));
        
        if (events == null) {
            events = new LinkedList<Event>();
        }
        
        if (operation == "PUT"){
            String id = req.getParameter("id");
            
            customerToEvent.setName(name_customer);
            customerToEvent.setCpf(cpf);
            customerToEvent.setPhone_number(phone_number);
            customerToEvent.setEmail(email);
            
            for (Event event : events) {
                if(event.getId().equalsIgnoreCase(id)){
                    event.setName(name_event);
                    event.setAddress(address);
                    event.setCustomer(customerToEvent);
                    event.setValue(value);
                    break;
                }
            }
        }else {
            events.add(new Event(name_event, address, customerToEvent, value));
        }
        
        context.setAttribute("customers", customers);
        context.setAttribute("events", events);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Event> events = (List<Event>) getServletContext().getAttribute("events");
        String eventId = req.getParameter("eventId");
        
        for (Event event : events) {
            if(event.getId().equalsIgnoreCase(eventId)){
                req.setAttribute("eventToUpdate", event);
                break;
            }
        }
        
        req.getRequestDispatcher("event/update.jsp").forward(req, resp);
    }
}

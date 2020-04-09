/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fjn.edu.jevento.domain;

import java.util.UUID;

/**
 *
 * @author jhonatan
 */
public class Event {
    private String id;
    private String name;
    private Address address;
    private Customer customer;
    private float value;

    public Event(String name, Address address, Customer customer, float value) {
        this.id = UUID.randomUUID().toString();
        this.name = name;
        this.address = address;
        this.customer = customer;
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }

    public String getId() {
        return id;
    }
    
}

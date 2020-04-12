/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fjn.edu.jevento.domain;

import java.util.List;
import java.util.UUID;

/**
 *
 * @author jhonatan
 */
public class Customer {
    private String id;
    private String name;
    private String cpf;
    private String phone_number;
    private String email;

    public Customer() {
    }
    
    public Customer(String name, String cpf, String phone_number, String email) {
        this.id = UUID.randomUUID().toString();
        this.name = name;
        this.cpf = cpf;
        this.phone_number = phone_number;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}

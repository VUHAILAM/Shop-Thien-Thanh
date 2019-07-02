/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author ADMIN
 */
public class Customer {
    private String account;
    private String password;
    private String name;
    private String email;
    private String phone;
    private String job;
    private String other;

    public Customer() {
    }

    public Customer(String account, String password, String name, String email, String phone, String job, String other) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.job = job;
        this.other = other;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }
    
    
}

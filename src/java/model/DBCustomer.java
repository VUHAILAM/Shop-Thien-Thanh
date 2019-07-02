/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class DBCustomer {
    private DBContext db;
    private Connection con;

    public DBCustomer() {
        db = new DBContext();
        try {
            con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(DBCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Customer getCustomer(String username, String password) {
        try {
            String sql = "Select * from Customers where username=? and password=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String fullname = rs.getString("fullname");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String job = rs.getString("job");
                String other = rs.getString("other");
                Customer c = new Customer(username, password, fullname, email, phone, job, other);
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}

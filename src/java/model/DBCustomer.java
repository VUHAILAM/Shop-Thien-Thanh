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
            String sql = "Select * from Customers where account=? and pass=?";
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
    
    
    public boolean isExistedCus(String account) {
        try {
            String sql = "SELECT count(*) FROM Customers where account = ?";

            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, account);
            int count = st.executeUpdate();
            return (count > 0);
        } catch (SQLException ex) {
            Logger.getLogger(DBCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public void insert(String username, String password,String fullname, 
            String email, String phone, String job, String other) {
        try {
            String sql = "INSERT into dbo.Customers (account, pass, fullname,"
                    + " email, phone, job, other) VALUES(?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, fullname);
            st.setString(4, email);
            st.setString(5, phone);
            st.setString(6, job);
            st.setString(7, other);
            if (!isExistedCus(username)) {
                 st.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public int Update(String acc, String name, String email, String phone, String job, String other) throws SQLException {
        String sql = "Update dbo.Customers set fullname = '"+name+"', email = '"+email+"', phone = '" +phone+ "', job = '"+job+"', other = '"+other+"' where account = '"+acc+"'";
        PreparedStatement st = con.prepareStatement(sql);
        int x = st.executeUpdate();
        if(x!=0)
            return x;
        else return 0;
    }
}

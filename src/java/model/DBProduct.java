/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class DBProduct {
    private DBContext db;
    private Connection con;

    public DBProduct() {
        db = new DBContext();
        try {
            con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(DBProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Product> getAllProducts() throws SQLException{
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Products";
        PreparedStatement st = this.con.prepareCall(sql);
        ResultSet rs = st.executeQuery();
        while(rs.next()){
            Product c = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5));
            list.add(c);
        }
        return list;
    }
}

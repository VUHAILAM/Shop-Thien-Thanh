
import entities.Product;
import java.sql.SQLException;
import java.util.ArrayList;
import model.DBProduct;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ADMIN
 */
public class NewClass {
    public static void main(String[] args) throws SQLException {
        DBProduct dbp = new DBProduct();
        ArrayList<Product> list = dbp.getAllProducts();
        for(Product i : list) {
            System.out.println(i.getName());
        }
    }
}

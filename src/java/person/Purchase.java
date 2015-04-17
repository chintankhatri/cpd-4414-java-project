/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package person;

import static Connect.Connect.getConnection;
import java.io.StringReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonObject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

/**
 *
 * @author chintan
 */
@Path("/purchase")
public class Purchase {
        @POST
    public void post(String str) {
        try {
            JsonObject json = Json.createReader(new StringReader(str)).readObject();
            String p_date = json.getString("p_date");
            String company_name = json.getString("company_name");
             String product_name = json.getString("product_name");
            String quantity = json.getString("quantity");
           
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO purchase (p_date,company_name,product_name,quantity) VALUES (?,?,?,?)");
            pstmt.setString(1, p_date);
            pstmt.setString(2, company_name);
            pstmt.setString(3, product_name);
               pstmt.setString(4, quantity);
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Sales.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}

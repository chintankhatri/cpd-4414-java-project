/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package person;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonObject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
/**
 *
 * @author chintan
 */
@Path("/displaysales")
public class Displaysales {
    @GET

    public String get() {
        String result = "";
        try {
            Connection conn = Connect.Connect.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM sales");
           // pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            rs.next();
            JsonObject json = Json.createObjectBuilder()
                    .add("s_id", rs.getString("title"))
                    .add("s_date", rs.getString("text"))
                    .add("cust_name", rs.getString("time"))
                    .add("product_name", rs.getInt("qunatity"))
                    .build();
            result = json.toString();
        } catch (SQLException ex) {
            Logger.getLogger(Sales.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}

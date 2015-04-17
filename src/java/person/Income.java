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
@Path("/income")
public class Income {

    @POST
    public void post(String str) {
        try {
            JsonObject json = Json.createReader(new StringReader(str)).readObject();
            String inc_date = json.getString("inc_date");
            String inc_desc = json.getString("inc_desc");
            String inc_amount = json.getString("inc_amount");
            String inc_type = json.getString("inc_type");

            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO income (inc_date,inc_desc,inc_amount,inc_type) VALUES (?,?,?,?)");
            pstmt.setString(1, inc_date);
            pstmt.setString(2, inc_desc);
            pstmt.setString(3, inc_amount);
            pstmt.setString(4, inc_type);
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Sales.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}

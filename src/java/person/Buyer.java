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
@Path("/buyer")
public class Buyer {
        @POST
    public void post(String str) {
        try {
            JsonObject json = Json.createReader(new StringReader(str)).readObject();
            String b_name = json.getString("b_name");
            String b_company = json.getString("b_company");
            String b_email = json.getString("b_email");
           
            Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO buyer (b_name,b_company,b_email) VALUES (?,?,?)");
            pstmt.setString(1, b_name);
            pstmt.setString(2, b_company);
            pstmt.setString(3, b_email);
            
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}

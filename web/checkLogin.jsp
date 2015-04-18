<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.Connect"%>
<%

    Connect dm = new Connect();
    ResultSet rs = dm.getData("Select * from login where username='" + request.getParameter("username") + "' and password ='" + request.getParameter("password") + "'");
    if (rs.next()) {
        if (rs.getString(2).equals(request.getParameter("username")) && rs.getString(3).equals(request.getParameter("password"))) {
 session.setAttribute("uname", rs.getString(1));
            response.sendRedirect("home.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }

    } else {
        response.sendRedirect("login.jsp");
    }

%>
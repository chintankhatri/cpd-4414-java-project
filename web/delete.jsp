<%@page import="Connect.Connect"%>
<%

    Connect dm = new Connect();

    if (request.getParameter("dsalesid") != null) {
     dm.setdata("delete from sales  where s_id=" + request.getParameter("dsalesid"));
     response.sendRedirect("display_sales.jsp");
    } 


%>
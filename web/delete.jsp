<%@page import="Connect.Connect"%>
<%

    Connect dm = new Connect();

    if (request.getParameter("dsalesid") != null) {
        dm.setdata("delete from sales  where s_id=" + request.getParameter("dsalesid"));
        response.sendRedirect("display_sales.jsp");
    }

    if (request.getParameter("dexpenseid") != null) {
        dm.setdata("delete from income  where inc_id=" + request.getParameter("dexpenseid"));
        response.sendRedirect("display_expense.jsp");
    }
    if (request.getParameter("dincomeid") != null) {
        dm.setdata("delete from income  where inc_id=" + request.getParameter("dincomeid"));
        response.sendRedirect("display_income.jsp");
    }
    if (request.getParameter("dpurchaseid") != null) {
        dm.setdata("delete from purchase  where p_id=" + request.getParameter("dpurchaseid"));
        response.sendRedirect("display_purchase.jsp");
    }


%>
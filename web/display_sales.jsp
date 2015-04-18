<%-- 
    Document   : display
    Created on : 17-Apr-2015, 6:21:46 PM
    Author     : chintan
--%>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    } else {

        response.sendRedirect("home.jsp");

    }
%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Connect.Connect"%>
<!DOCTYPE html>
<%
    Connection conn = Connect.getConnection();
    PreparedStatement psmt = null;
    ResultSet rs = null;
    psmt = conn.prepareStatement("SELECT * FROM sales");
    rs = psmt.executeQuery();


%>

<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name='robots' content='all, follow' />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>sales</title>   
        <link href="public/css/default.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="public/css/blue.css" rel="stylesheet" type="text/css" media="screen" /> <!-- color skin: blue / red / green / dark -->
        <link href="public/css/datePicker.css" rel="stylesheet" type="text/css" media="screen" />

        <link href="public/css/visualize.css" rel="stylesheet" type="text/css" media="screen" />

        <script type="text/javascript" src="public/js/jquery-1.4.2.min.js"></script>   
        <script type="text/javascript" src="public/js/jquery.dimensions.min.js"></script>




        <!-- // Date Picker // -->
        <script type="text/javascript" src="public/js/date.js"></script>
        <!--[if IE]><script type="text/javascript" src="public/js/jquery.bgiframe.js"></script><![endif]-->
        <script type="text/javascript" src="public/js/jquery.datePicker.js"></script>
    </head>

    <body>
        <div id="main">
            <!-- #header -->
            <div id="header"> 
                <!-- #logo --> 
                <div id="logo">
                    <a href="#" title="Go to Homepage"><span>Great Admin</span></a>
                </div>
                <!-- /#logo -->
                <!-- #user -->                        
                <div id="user">
                    <h2>Forest Gump <span>(admin)</span></h2>
                    <a href="#">7 messages</a> - <a href="#">settings</a> - <a href="index.html">logout</a>
                </div>
                <!-- /#user -->  
            </div>
            <!-- /header -->
            <!-- #content -->
            <div id="content">

                <!-- breadcrumbs -->
                <div class="breadcrumbs">
                    <ul>
                        <li class="home"><a href="#">Homepage</a></li>
                        <li><a href="#">Category</a></li>
                        <li>Page</li>
                    </ul>
                </div>
                <!-- /breadcrumbs -->

                <!-- /box -->


                <!-- /box -->

                <!-- /box -->
                <div class="box">
                    <table class="tab tab-drag">
                        <tr class="top nodrop nodrag">
                            <th >Sales Id</th>
                            <th >Sale Date</th>
                            <th>Customer Name</th>
                            <th>Product Name</th>          
                            <th>Quantity</th>
                            <th>Action</th>
                        </tr>
                        <tr>
                            <%  int cnt = 1;
                                while (rs.next()) {
                            %>
                        <tr>

                            <td><%=rs.getString("s_id")%></td>
                            <td><%=rs.getString("s_date")%></td>
                            <td><%=rs.getString("cust_name")%></td>
                            <td><%=rs.getString("product_name")%></td>
                            <td><%=rs.getString("quantity")%></td> 
 <td><a href="sales_edit.jsp?esalesid=<%=rs.getString(1)%>">Edit</a></td>
                            <td><a href="delete.jsp?dsalesid=<%=rs.getString(1)%>">Delete</a></td>
                     

                            <%
                                    cnt++;
                                }
                            %>


                        </tr>

                    </table>
                </div>
                <!-- /box -->



            </div>
            <!-- /#content -->
            <!-- #sidebar -->
            <div id="sidebar">

                <!-- mainmenu -->
                <ul id="floatMenu" class="mainmenu">
                    <li class="first"><a href="#">Dashboard</a></li>
                    <li><a href="#">Income Expense</a>
                        <ul class="submenu">
                            <li><a href="display_income.jsp">Show Income</a></li>          
                            <li><a href="display_expense.jsp">Show Expense</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Add new Transection</a>

                    </li>
                    <li><a href="#">Purchase</a>
                        <ul class="submenu">
                            <li><a href="display_purchase.jsp">Show Purchase</a></li>          
                            <li><a href="purchase.html">New Purchase</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Sales</a>
                        <ul class="submenu">
                            <li><a href="display_sales.jsp">Show Sales</a></li>          
                            <li><a href="sales.html">New Sales</a></li>
                        </ul>
                    </li>

                    <li><a href="#">Settings</a></li>
                </ul>
                <!-- /.mainmenu -->

            </div>
            <!-- /#sidebar -->
            <!-- #footer -->
            <div id="footer">
                <p>� 2010 Great Admin | <a href="#main">Top</a></p>
            </div>
            <!-- /#footer -->

            <!-- MODAL WINDOW -->
            <div id="modal" class="modal-window">

                <h2>Example modal window</h2>

                <!-- Warning form message -->            
                <div class="form-message warning">
                    <p>On the page the following error occurred.</p>
                </div>

                <p>Suspendisse et ante vitae turpis vestibulum fermentum nec nec elit. Suspendisse ullamcorper lacus in arcu mollis fringilla porta mi placerat. Ut at elit non diam tristique scelerisque. </p>

            </div>

            <!-- HELP WINDOW -->
            <div id="help" class="modal-window">

                <h2>Example help window</h2>

                <p>Suspendisse et ante vitae turpis vestibulum fermentum nec nec elit. Suspendisse ullamcorper lacus in arcu mollis fringilla porta mi placerat. Ut at elit non diam tristique scelerisque. </p>

                <ul class="list list-square">
                    <li><strong>Lorem ipsum</strong>  dolor sit amet</li>
                    <li><strong>consectetur adipiscing</strong> elit phasellus et risus</li> 
                    <li><strong>Maecenas non</strong> nunc proin eleifend viverra sapien</li>
                </ul>

            </div>


        </div>
        <!-- /#main --> 
    
    </body>
</html>





<%@page import="Connect.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">

    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name='robots' content='all, follow' />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>Home</title>   
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
        <script src="jquery.min.js"></script>

    </head>   
    <body>
        <div id="main">
            <!-- #header -->
            <div id="header"> 
                <!-- #logo --> 
                <div >
                    <a href="#" title="Go to Homepage"><span>E-Accounts</span></a>
                </div>
                <!-- /#logo -->
                <!-- #user -->                        
                <div id="user">
                    <h2>Welcome,&nbsp;<%= session.getAttribute("user")%> </h2> <a  style="font-size: 14px;" href="logout.jsp">logout</a>
                </div>
                <!-- /#user -->  
            </div>
            <!-- /header -->
            <!-- #content -->
            <div id="content">

                <!-- breadcrumbs -->
            
                <!-- /breadcrumbs -->

                <!-- /box -->


                <!-- /box -->

                <!-- /box -->
                <div class="box">
                    <div class="headlines">
                        <h2><span>Home</span></h2>
                        <a href="#help" class="help"></a>
                    </div>
                    <%
                        Connection conn = Connect.getConnection();
                        PreparedStatement psmt = null;
                        ResultSet rs = null;
                        ResultSet prs = null;
                        ResultSet irs = null;
                        ResultSet ers = null;
                        psmt = conn.prepareStatement("SELECT sum(amount),s_date FROM sales where YEAR(s_date) = YEAR(CURDATE()) AND MONTH(s_date) = MONTH(CURDATE())");
                        rs = psmt.executeQuery();
                        rs.next();
                        psmt = conn.prepareStatement("SELECT sum(amount),p_date FROM purchase where YEAR(p_date) = YEAR(CURDATE()) AND MONTH(p_date) = MONTH(CURDATE())");
                        prs = psmt.executeQuery();
                        prs.next();

                        psmt = conn.prepareStatement("SELECT sum(inc_amount),inc_date FROM income where YEAR(inc_date) = YEAR(CURDATE()) AND MONTH(inc_date) = MONTH(CURDATE()) and inc_type=1");
                        irs = psmt.executeQuery();
                        irs.next();
                        psmt = conn.prepareStatement("SELECT sum(inc_amount),inc_date FROM income where YEAR(inc_date) = YEAR(CURDATE()) AND MONTH(inc_date) = MONTH(CURDATE()) and inc_type=0");
                        ers = psmt.executeQuery();
                        ers.next();

                    %>
                    <div class="box" style="height: 200px;">
                        <center>   <table>
                            <tr>
                                <td>
                                    <div class="form-message correct">
                                        <p>Total Sales This Month:</p>
                                        <p><b>$ <%=rs.getString(1)%></b></p>
                                    </div>
                                </td>
                                      <td>
                                    <div class="form-message error">
                                        <p>Total Purchase This Month:</p>
                                        <p><b> $<%=prs.getString(1)%></b></p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-message correct">
                                        <p>Total Income This Month:</p>
                                        <p> <b>$<%=irs.getString(1)%></b></p>
                                    </div>
                                </td>
                                      <td>
                                    <div class="form-message error">
                                        <p>Total Expense This Month:</p>
                                        <p><b>$ <%=ers.getString(1)%></b></p>
                                    </div>
                                </td>
                            </tr>
                         
                           


                            </table></center>












                    </div>
                </div>
                <!-- /box -->



            </div>
            <!-- /#content -->
            <!-- #sidebar -->
   <div id="sidebar">

                <!-- mainmenu -->
                <ul id="floatMenu" class="mainmenu">
                    <li class="first"><a href="home.jsp">Dashboard</a></li>
                    <li><a href="#">Income Expense</a>
                        <ul class="submenu">
                            <li><a href="display_income.jsp">Show Income</a></li>          
                            <li><a href="display_expense.jsp">Show Expense</a></li>
                        </ul>
                    </li>
                    <li><a href="income_expense.jsp">Add new Transection</a>

                    </li>
                    <li><a href="#">Purchase</a>
                        <ul class="submenu">
                            <li><a href="display_purchase.jsp">Show Purchase</a></li>          
                            <li><a href="purchase.jsp">New Purchase</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Sales</a>
                        <ul class="submenu">
                            <li><a href="display_sales.jsp">Show Sales</a></li>          
                            <li><a href="sales.jsp">New Sales</a></li>
                        </ul>
                    </li>

                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
                <!-- /.mainmenu -->

            </div>
            <!-- /#sidebar -->
            <!-- #footer -->
            <div id="footer">
                <p>© 2010 Great Admin | <a href="#main">Top</a></p>
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
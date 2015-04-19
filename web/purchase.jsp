<%-- 
    Document   : purchase
    Created on : 18-Apr-2015, 4:45:12 PM
    Author     : chintan
--%>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    } else {

    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name='robots' content='all, follow' />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>Purchase Form</title>   
        <link href="public/css/default.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="public/css/blue.css" rel="stylesheet" type="text/css" media="screen" /> <!-- color skin: blue / red / green / dark -->
        <link href="public/css/datePicker.css" rel="stylesheet" type="text/css" media="screen" />

        <link href="public/css/visualize.css" rel="stylesheet" type="text/css" media="screen" />

        <script type="text/javascript" src="public/js/jquery-1.4.2.min.js"></script>   
        <script type="text/javascript" src="public/js/jquery.dimensions.min.js"></script>




        <script src="jquery.min.js"></script>
        
     
        <script>
            $(document).ready(function() {
                $('#purchase').click(function() {
                    $.ajax({
                        url: "./f/purchase",
                        dataType: "json",
                        contentType: 'application/json; charset=UTF-8',
                        data: JSON.stringify({
                            "p_date": $("#p_date").val(),
                            "company_name": $("#company_name").val(),
                            "product_name": $("#product_name").val(),
                            "amount": $("#amount").val(),
                            "quantity": $("#quantity").val()}),
                        method: "post"



                    });
                });
            });

        </script>
      
    </head>
    <body>
        <div id="main">
            <!-- #header -->
            <div id="header"> 
                <!-- #logo --> 
                <div >
                    <a href="#" title="Go to Homepage"><span>Great Admin</span></a>
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
                        <h2><span>Purchase Form</span></h2>
                        <a href="#help" class="help"></a>
                    </div>
                    <div class="box-content">
                        <form class="formBox" >
                            <fieldset>



                                <div class="clearfix">
                                    <div class="lab"><label for="input-three">Name:</label></div>
                                    <div class="con"><input type="date" class="input"  id="p_date" /></div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label for="input-three">Company Name:</label></div>
                                    <div class="con"><input type="text" class="input" id="company_name" /></div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label for="input-three">Product Name:</label></div>
                                    <div class="con"><input type="text" class="input"  id="product_name" /></div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label for="input-three">Quantity:</label></div>
                                    <div class="con"><input type="text" class="input"  id="quantity" /></div>
                                </div>

                                <div class="clearfix">
                                    <div class="lab"><label for="input-three">Price:</label></div>
                                    <div class="con"><input type="text" class="input"  id="amount" /></div>
                                </div>
                                
                                
                                   
                
                                
                                
                                <div class="btn-submit"><!-- Submit form -->
                                    <button id="purchase" class="btn btn-default">Insert</button> 

                                </div>
                            </fieldset>    
                        </form>
                    </div><!-- /box-content -->
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
                
    </body>
      
</html>

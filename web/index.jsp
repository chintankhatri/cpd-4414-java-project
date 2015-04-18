<%-- 
    Document   : login
    Created on : 17-Apr-2015, 5:40:56 PM
    Author     : chintan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link href="public/css/login.css" rel="stylesheet" type="text/css" />
    <link href="public/css/login-blue.css" rel="stylesheet" type="text/css" />  <!-- color skin: blue / red / green / dark -->
    </head>
    <body>
                        
         <div id="main">
    <div id="content">
      <div id="login">
        
        <div id="logo"><span>Great Admin</span></div>
                
        <form method="post" action="#" id="form-login" class="formBox">
          <fieldset>
            <div class="form-col">
                <label for="username" class="lab">Username <span class="warning"></span></label>
                <input type="text" name="username" class="input" id="username" />
            </div>
            <div class="form-col form-col-right">
                <label for="password" class="lab">Password <span class="warning"></span></label>
                <input type="password" name="password" class="input" id="password" />
            </div>
            <div class="form-col form-col-check">
              <label><input type="checkbox" name="remeber_me" class="checkbox" />Remember me on this computer</label> 
            </div>
            <div class="form-col form-col-right"> 
              <input type="submit" name="" value="Login" class="submit" />
            </div>                 
          </fieldset>
        </form>
        
      </div>
    </div><!-- /content -->    
  </div>
        
    </body>
</html>

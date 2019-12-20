<%-- 
    Document   : SignUpForm
    Created on : Jul 14, 2019, 12:05:52 PM
    Author     : ADMIN
--%>

<%@page import="entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login V8</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="Login_v8/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login_v8/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login_v8/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login_v8/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="Login_v8/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login_v8/vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login_v8/vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="Login_v8/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="Login_v8/css/util.css">
        <link rel="stylesheet" type="text/css" href="Login_v8/css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>
        <%
            Customer a = (Customer) session.getAttribute("cus");
        %>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <form class="login100-form validate-form p-l-55 p-r-55 p-t-178" action="" method="post">
                        <span class="login100-form-title">
                            Customer Detail
                        </span>
                        <div class="wrap-input100 validate-input m-b-16" >
                            <input class="input100" type="text" name="account" value="Account: <%=a.getAccount()%>" readonly required>
                            <span class="focus-input100"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input m-b-16" >
                            <input class="input100" type="text" name="fullname" value="Name: <%=a.getName()%>" readonly required>
                            <span class="focus-input100"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input m-b-16" >
                            <input class="input100" type="email" name="email" value="Email: <%=a.getEmail()%>" readonly required>
                            <span class="focus-input100"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input m-b-16" >
                            <input class="input100" type="text" name="phone" value="Phone: <%=a.getPhone()%>" readonly required>
                            <span class="focus-input100"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input m-b-16" >
                            <input class="input100" type="text" name="job" value="Job: <%=a.getJob()%>" readonly required>
                            <span class="focus-input100"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input m-b-16">
                            <input class="input100" type="text" name="other" value="Other: <%=a.getOther()%>" readonly>
                            <span class="focus-input100"></span>
                        </div>
                        
                                    
                        <div class="container-login100-form-btn">
                            <input class="login100-form-btn" onClick="window.location.href='UpdateAccount.jsp'" type="button" value="Want Update??"/>
                        </div>

                    </form>
                </div>
            </div>
        </div>


        <!--===============================================================================================-->
        <script src="Login_v8/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v8/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v8/vendor/bootstrap/js/popper.js"></script>
        <script src="Login_v8/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v8/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v8/vendor/daterangepicker/moment.min.js"></script>
        <script src="Login_v8/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v8/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="Login_v8/js/main.js"></script>

    </body>
</html>

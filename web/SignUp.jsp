<%-- 
    Document   : SignUp
    Created on : Jun 23, 2019, 3:32:24 PM
    Author     : ADMIN
--%>

<%@page import="entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="Style/mystyle.css">
    <script src="Script/myScript.js" charset="UTF-8"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body id="bodyStyle" onload="load()">
        <!--header-->
        <header id="header">
            <div id="logo">
                <div>
                    <h1>
                        <img src="Images/Logo.gif" alt="Thiên Thanh" title="Thiên Thanh">
                        <span style="font-weight: bold">Shop</span>
                        <span id="thienthanh">Thiên Thanh</span>
                        <span style="font-size: 15px">THỜI TRANG NAM NỮ</span>
                    </h1>
                </div>
                 <% if (session.getAttribute("cus") == null) { %>
             <div id="login">
                    <!--<form name="frmTim" action="" method="get">
                        <input id="username" type="text" name="txt" placeholder="Account" required>
                        <input id="password" type="password" name="pass" placeholder="Password" required>
                        <button class="button" onclick="getInfo()">LOGIN</button>
                        <button class="button" onclick="signUp()">SIGN UP</button>
                     </form>-->
                    <button ><a style ="font-size: 18px;" href="Login.jsp">Login</a></button>
                    
                    <button ><a style ="font-size: 18px;" href="SignUp.jsp">Sign up</a></button>
                </div>
             <% } else {
                Customer a = (Customer) session.getAttribute("cus");
            %>
            <div id ="login"> 
                <a href="AccountDetail.jsp"><%=a.getAccount()%> |</a>
                <a href="LogoutServlet">  Log out</a>
            </div>
           
        
            
        <%}%>
            </div>
        </header>
        <!--end header-->
        <!--menuContainer-->
        <section id="menuContainer">
            <nav id="menu" class="radius">
                <ul>
                    <li><a href="Home.jsp">Trang chủ</a></li>
                    <li><a href="#">Quần áo nữ</a>
                        <ul class="sub-menu">
                            <li style="border:none"><a href="ShowProducts.jsp?cat=FT">Áo thun</a></li>
                            <li style="border:none"><a href="ShowProducts.jsp?cat=FSM">Áo Sơ mi</a></li>
                            <li style="border:none"><a href="ShowProducts.jsp?cat=FQ">Quần tây</a></li>
                            <li style="border:none"><a href="ShowProducts.jsp?cat=FQ">Quần jean</a></li>
                            <li style="border:none"><a href="#">Giày dép</a></li>
                        </ul>
                    </li>                  
                    <li>
                        <a href="#">Quần áo nam</a>
                        <ul class="sub-menu">
                            <li style="border:none"><a href="ShowProducts.jsp?cat=MT">Áo thun</a></li>
                            <li style="border:none"><a href="ShowProducts.jsp?cat=MSM">Áo Sơ mi</a></li>
                            <li style="border:none"><a href="ShowProducts.jsp?cat=MQ">Quần tây</a></li>
                            <li style="border:none"><a href="ShowProducts.jsp?cat=MQ">Quần jean</a></li>
                            <li style="border:none"><a href="#">Giày dép</a></li>
                        </ul>
                    </li>                   
                    <li><a href="#">Phụ kiện</a>
                        <ul class="sub-menu">
                            <li style="border:none"><a href="#">Mắt kính</a></li>
                            <li style="border:none"><a href="#">Dây nịt</a></li>
                            <li style="border:none"><a href="#">Giỏ xách</a></li>
                            <li style="border:none"><a href="#">Nón</a></li>
                        </ul>
                    </li>                  
                    <li><a href="#">Tin tức sự kiện</a></li>
                    <li style="width:auto; border:none" >
                       <form name="frmTim" action="" method="get">
                            <input id="inp" type="text" name="txt" placeholder="Tên sản phẩm" style = "width: 100px;">
                            <input type="image" src="Images/search.png" name="btnTim" style="position: relative; top: 7px" onclick="window.location.href='SearchProduct.jsp?key='+document.getElementById('inp')+'" >
                        </form>
                    </li>
                </ul>
            </nav>
        </section>
        <!--end menuContainer-->
        <!--pageContainer-->
        <section id="mainContainer">
            <!-- start sidebar1 -->
            <aside id="sidebar1">
                <div id="section1">
                    <!—Mục 1 -->
                    <!--hình phải-->
                    <!--end hình phải-->
                    <div id="sanphammoi" class="radius">Sản phẩm mới</div>
                    <!--hình phải-->
                    <!--end hình phải-->
                    <div id="content_left">
                        <ul>
                            <li><a href="#">Áo ba lỗ dễ thương lắm đây</a></li>
                            <li><a href="#">Áo nơ xinh form dài</a></li>
                            <li><a href="#">Áo kiểu set đôi</a></li>
                            <li><a href="#">Chân váy kẻ sọc</a></li>
                            <li><a href="#">Đầm ống phong cách Q-Ling</a></li>
                            <li><a href="#">Áo sơ mi nam viền</a></li>
                            <li><a href="#">Sơ mi phong cách Anh</a></li>
                            <li><a href="#">Quần sort cute Man</a></li>
                            <li><a href="#">Quần kaki phong cách Man</a></li>
                            <li><a href="#">Kính mát Trisha jewelry</a></li>
                        </ul>
                    </div>
                </div>
                <br>
                <div id="section2">
                    <!—Mục 2 -->
                    <div id="hotrotructuyen" class="radius">
                        Hỗ trợ trực tuyến
                    </div>
                    <div id="yahooAndSkype">
                        <img src="Images/Yahoo.png" title="Yahoo"> <br>
                        <img src="Images/Skype.png" title="Skype"> <br>
                        Hot line: <span>0914 024 357</span>
                    </div>
                </div>
                <br>
                <div id="section3">
                    <!—Mục 3 -->
                    <div id="section3_topic" class="radius">Thống kê</div>
                    <div id="section3_content">Số người online: 100500<br />Số người truy cập: 300100</div>
                </div>
            </aside>
            <!-- end sidebar1 -->
            <!-- start content -->
            <section id="formbox">
                <jsp:include page="Login_v8/SignUpForm.jsp"/>
                <!--<div>
                    <h1 style="color:#8c0209; border-bottom: #999 1px dashed;">Đăng ký thành viên mới</h1>
                </div>
                <div id="box">
                    <form action="SignUpServlet" method="post">
                        <table>
                            <tr>
                                <td>Tên đăng nhập: </td>
                                <td><input id="account" type="text" name="account" onkeyup="check()" /></td>
                                <td>
                                    <div id="z-acc"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Mật khẩu: </td>
                                <td><input id="mk" type="password" name="mk" onkeyup="check()"/></td>
                                <td>
                                    <div id="z-mk"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Nhập lại mật khẩu: </td>
                                <td><input id="mk1" type="password" name="mk1" onkeyup="check()" /></td>
                                <td>
                                    <div id="z-mk1"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Họ và tên: </td>
                                <td><input id="fullname" type="text" name="fullname" onkeyup="check()"/></td>
                                <td>
                                    <div id="z-name"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Giới tính: </td>
                                <td><input type="checkbox" name="Nam"/>Nam</td>
                                <td><input type="checkbox" name="Nu"/>Nữ</td>
                            </tr>
                            <tr>
                                <td>Ngày sinh: </td>
                                <td><input id="DOB" type="date" name="DOB" onkeyup="check()" /></td>
                                <td>
                                    <div id="z-DOB"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Nghề nghiệp: </td>
                                <td><input id="job" type="text" name="job"/></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td><input id="email" type="email" name ="email" onkeyup="check()"/></td>
                                <td>
                                    <div id="z-email"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Điện thoại</td>
                                <td><input id="phone" type="number" name ="phone" onkeyup="check()"/></td>
                                <td>
                                    <div id="z-phone"></div>
                                </td>
                            </tr>
                            <tr>
                                <td>Ghi chú</td>
                                <td><textarea cols="30" rows="10" id="note"name="other"></textarea></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><button type="button" onclick="return XacNhan()">Chấp nhận</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div id="ThongTin"></div>-->
            </section>
            <aside id="sidebar2" class="sidebar">
                <div class="subsidebar" style="height: 130px">
                    <div class="bar_title">
                        <img src="Images/cart4.gif" align="middle" style="top:-5px;" />Giỏ hàng
                    </div>
                    <div class="khung">
                        <p>Số lượng: <b>5</b></p>
                        <p>Trị giá: <b>5,300,000</b> VNĐ</p>
                    </div>
                </div>
                <div class="subsidebar">
                    <div class="bar_title">Tin thời trang</div>
                    <div class="subsidecontent">
                        <ul>
                            <li>
                                <a href="#">9 kiểu áo khoác lên ngôi mùa đông 2013</a>
                                <img src="Images/TinTT_01.jpg" width="100%" />
                            </li>
                            <li>
                                <a href="#">10 xu hướng thời trang hot nhất thu đông 2013</a>
                                <img src="Images/TinTT_02.jpg" width="100%" />
                            </li>
                            <li>
                                <a href="#">10 set đồ khiến chị em công sở "thèm mua"</a>
                                <img src="Images/TinTT_03.jpg" width="100%" />
                            </li>
                            <li>
                                <a href="#">Mix đồ đẹp thu đông 2013</a>
                                <img src="Images/TinTT_04.jpg" width="100%" />
                            </li>
                            <li>
                                <a href="#">Thu này, đừng lãng quên kẻ caro!</a>
                                <img src="Images/TinTT_05.jpg" width="100%" />
                            </li>
                            <!--<li><a href="#">Năng động với jeans và blazer</a>
                            <img src="images/TinTT_06.jpg" width="100%" />
                        </li>
                        <li><a href="#">Ngày se lạnh mặc jeans thế nào cho đẹp mắt nhất</a>
                            <img src="images/TinTT_07.jpg" width="100%" />
                        </li>
                        <li><a href="#">Style túi xách hút hồn phái đẹp</a>
                            <img src="images/TinTT_08.jpg" width="100%" />
                        </li>
                        <li><a href="#">Ngọt ngào thời trang mặc nhà vào thu</a>
                            <img src="images/TinTT_09.jpg" width="100%" />
                        </li>
                        <li><a href="#">Váy liền giản dị nơi công sở</a>
                            <img src="images/TinTT_10.jpg" width="100%" />
                        </li> -->
                        </ul>
                    </div>
                </div>
            </aside>
            <!-- end content -->
            <div style="clear: both;">&nbsp;</div>
        </section>
        <!--end pageContainer-->
        <!--footer-->
        <div id="footer">
            <div id="footer_content">
                &COPY; 2009 All Rights Reserved &bull; Design by <a href="https://www.facebook.com/hailam.vu.52" target="_blank">Vũ Hải Lâm</a>
            </div>
            <div id="footer_icon">
                <a href="https://www.facebook.com" target="_blank"><img src="Images/facebook.png"></a>
                <a href="https://www.youtube.com" target="_blank"><img src="Images/youTube.png"></a>
            </div>
        </div>
        <!--end footer-->
    </body>
</html>

<%-- 
    Document   : Home
    Created on : Jun 23, 2019, 3:06:59 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="Style/mystyle.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop Thiên Thanh</title>
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
                <!--<div id="login">
                    <form name="frmTim" action="" method="get">
                        <input id="username" type="text" name="txt" placeholder="Account" required>
                        <input id="password" type="password" name="pass" placeholder="Password" required>
                        <button class="button" onclick="getInfo()">LOGIN</button>
                        <button class="button" onclick="signUp()">SIGN UP</button>
                    </form>
                </div>-->
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
                            <li style="border:none"><a href="#">Áo thun</a></li>
                            <li style="border:none"><a href="#">Áo Sơ mi</a></li>
                            <li style="border:none"><a href="#">Quần tây</a></li>
                            <li style="border:none"><a href="#">Quần jean</a></li>
                            <li style="border:none"><a href="#">Giày dép</a></li>
                        </ul>
                    </li>                  
                    <li>
                        <a href="#">Quần áo nam</a>
                        <ul class="sub-menu">
                            <li style="border:none"><a href="#">Áo thun</a></li>
                            <li style="border:none"><a href="#">Áo Sơ mi</a></li>
                            <li style="border:none"><a href="#">Quần tây</a></li>
                            <li style="border:none"><a href="#">Quần jean</a></li>
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
                    <!--<li style="width:auto; border:none" >
                        <form name="frmTim" action="" method="get">
                            <input id="inp" type="text" name="txt" placeholder="Tên sản phẩm" required>
                            <input type="image" src="Images/search.png" name="btnTim" style="position: relative; top: 7px" onclick="search()" >
                        </form>
                    </li>-->
                </ul>
            </nav>
        </section>
        <!--end menuContainer-->

        <!--pageContainer-->
        <section id="mainContainer">
            <!-- start sidebar1 -->
            <aside id="sidebar1">
                <div id="section1"> <!—Mục 1 -->
                    <!--hình phải-->

                    <!--end hình phải-->
                    <div id="sanphammoi" class="radius">Sản phẩm mới</div>
                    <!--hình phải-->

                    <!--end hình phải-->
                    <div id="content_left" >
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
                <div id="section2"> <!—Mục 2 -->
                    <div id="hotrotructuyen" class="radius">
                        Hỗ trợ trực tuyến
                    </div>
                    <div id="yahooAndSkype"> 
                        <img src="Images/yahoo.png" title="Yahoo"> <br>
                        <img src="Images/Skype.png" title="Skype"> <br>
                        Hot line: <span>0914 024 357</span>
                    </div>
                </div>
                <br>
                <div id="section3"> <!—Mục 3 -->
                    <div id="section3_topic" class="radius">Thống kê</div>
                    <div id="section3_content">Số người online: 100500<br />Số người truy cập: 300100</div>
                </div>
            </aside>
            <!-- end sidebar1 -->
            <!-- start content -->
            <section id="mainContent">
                <div id="mainContent_1">
                    <img src="Images/bg_banner.jpg">
                    <div id="mainContent_1_title">
                        &laquo;&laquo;&nbsp;&nbsp;Cửa hàng của chúng tôi&nbsp;&nbsp;&raquo;&raquo;
                    </div>
                </div> <!--mục 1 -->
                <div id="mainContent_2"> <!—mục 2 -->
                    <div id="mainContent_2_title" class="radius">
                        &loz; Thời trang cực hot !!! 
                    </div>
                    <div id="mainContent_2_content">
                        <img src="Images/Moi_03.jpg" height="160px" width="103.5">
                        <img src="Images/Moi_04.jpg" height="160px" width="103.5">
                        <img src="Images/Moi_05.jpg" height="160px" width="103.5">
                        <img src="Images/Moi_06.jpg" height="160px" width="103.5">
                        <img src="Images/Moi_07.jpg" height="160px" width="103.5">
                        <img src="Images/Moi_10.jpg" height="160px" width="103.5">
                        <img src="Images/Moi_09.jpg" height="160px" width="103.5">
                    </div>
                </div>
                <div id="mainContent_3"> <!--mục 3 -->
                    <h1>Chào mừng bạn đến với shop quần áo rẻ đẹp!</h1>
                    <h3>Hãy thỏa sức shopping online cùng shop quần áo rẻ đẹp nhé </h3>
                    <p id="mainContent_3_1">Để chuẩn bị cho một ngày mới năng 
                        động và hiệu quả, bạn không thể lơ là trong việc chọn lựa cho mình một bộ cánh tươm tất và thật xinh xắn. Diện cho mình những bộ áo quần hợp thời 
                        trang, vừa thanh lịch lại vừa rất trẻ trung, duyên dáng, sành điệu… đó chính là điều mà 
                        <span>Shop Thiên Thanh</span> muốn giới thiệu với các bạn.
                    </p>
                    <p id="mainContent_3_2"><a href="Introduce.jsp">&laquo;&laquo;&nbsp;&nbsp;Xem chi tiết&nbsp;&nbsp;&raquo;&raquo;</a></p>
                </div>
                <div id="mainContent_4">
                    <div id="mainContent_4_title" class="radius">
                        &loz; Thời trang nam
                    </div>
                    <script src="Script/myScript.js" charset="UTF-8"></script>
                    <div id="noichuaanh"></div>
                </div>
            </section>
            <!-- end content -->
            <div style="clear: both;">&nbsp;</div>
        </section>
        <!--end pageContainer-->

        <!--footer-->
        <div id="footer">
            <div id="footer_content">
                &COPY; 2009 All Rights Reserved &bull; Design by <a href="http://alphatek.edu.vn" target="_blank">Alphatek Company</a>
            </div>
            <div id="footer_icon">
                <a href="https://www.facebook.com" target="_blank"><img src="Images/facebook.png"></a>
                <a href="https://www.youtube.com" target="_blank"><img src="Images/youtube.png"></a>
            </div>
        </div>
                    <!--end footer-->
    </body>
</html>

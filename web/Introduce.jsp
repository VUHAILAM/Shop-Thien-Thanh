<%-- 
    Document   : Introduce
    Created on : Jun 23, 2019, 3:17:13 PM
    Author     : ADMIN
--%>

<%@page import="entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="Style/mystyle.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Introduce</title>
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
            <section id="content_intro">
                <div class="banner2">
                    <img src="Images/img_01.jpg" alt="example" />
                </div>
                <div class="post">
                    <h1 class="title">Chào mừng bạn đến với shop quần áo rẻ đẹp!</h1>
                    <div class="Khauhieu">
                        <div id="kh1" class="kh">Hãy thỏa sức</div>
                        <div id="kh2" class="kh">shopping <br />online</div>
                        <div id="kh3" class="kh">cùng shop <br />quần áo</div>
                        <div id="kh4" class="kh">rẻ đẹp nhé!</div>
                    </div>
                    <article class="entry">
                        <p>
                            Để chuẩn bị cho một ngày mới năng động và hiệu quả, bạn không thể lơ là trong việc chọn lựa cho mình một bộ cánh tươm tất và thật xinh xắn. Diện cho mình những bộ áo quần hợp thời trang, vừa thanh lịch lại vừa rất trẻ trung, duyên dáng, sành điệu… đó chính là điều mà
                            Shop <b>Thiên Thanh</b> muốn giới thiệu với các bạn.
                        </p>
                        <p>
                            Shop thời trang <b>Thiên Thanh</b> với nhiều sản phẩm phong phú, đa dạng: Quần áo, dây lưng, ví da, kính mắt nam nữ… với mẫu mã, kiểu dáng model nhất được cập nhật liên tục theo xu hướng thời trang trẻ.
                            Với những chiếc áo sơ mi, quần âu lịch sự nhưng rất tôn vóc dáng của bạn, dáng đầm ngắn đa dạng về màu sắc và kiểu dáng tôn nên vẻ đẹp nhẹ nhàng và nữ tính, giản dị nhưng kiêu sa và rất hợp với xu hướng hiện đại.
                            Hòa nhịp cùng những bộ phụ trang như vòng đeo tay hay ví nhỏ, dây lưng, kính mắt, bông tai, giày cao gót… khiến bộ trang phục của bạn thật nổi bật và cá tính khi bạn đến với Shop thời trang
                            <b>Thiên Thanh</b> chúng tôi.
                        </p>
                        <p>
                            Chúng tôi sẽ giao hàng tận nơi trong thời gian nhanh nhất!
                            Hãy đến với Shop thời trang <b>Thiên Thanh</b> để chọn cho mình những bộ trang phục duyên dáng và hợp với mình nhất nha bạn!
                        </p>
                        Liên hệ trực tiếp: <a href="#">Shop Thời Trang Thiên Thanh</a>
                        <p>
                            Địa chỉ: 357 Lê Hồng Phong, Q.10, TP.HCM <br />
                            Holine: 0914 024 357
                        </p>

                    </article>
                </div>
                <div class="post">
                    <h2 class="title">Thông tin về chúng tôi</h2>
                    <p class="byline"> </p>
                    <article class="entry">
                        <h3>Danh sách cửa hàng: </h3>
                        <ul>
                            <li>Shop Thiên Thanh 1, 233 Hai Bà Trưng, Quận 3, Tp.HCM</li>
                            <li>Shop Thiên Thanh 2, 227 Nguyễn Văn Cừ, Quận 5, Tp.HCM</li>
                            <li>Shop Thiên Thanh 3, số 2 Trần Quang Khải, Quận 1, Tp.HCM</li>
                        </ul>
                        <h3>Đặc biệt:</h3>
                        <ol>
                            <li>Giao hàng tận nơi, không tính phí</li>
                            <li>Có giảm giá cho khách hàng thân thiết</li>
                            <li>Giảm giá cho các dịp lễ và Tết</li>
                        </ol>
                    </article>
                </div>
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

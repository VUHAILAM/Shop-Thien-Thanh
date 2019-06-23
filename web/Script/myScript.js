
imgname = ["Nam_01.jpg", "Nam_02.jpg", "Nam_03.jpg", "Nam_04.jpg", "Nam_05.jpg", "Nam_06.jpg", "Nam_07.jpg", "Nam_08.jpg"];
price = [10, 15, 20, 25, 30]
function load() {
    var s = "";
    var k = 4;
    var row;
    //------------------------------------------------------------------------------------------------------------------------                
    if (imgname.length % k == 0)
        row = imgname.length / k;
    else
        row = Math.floor(imgname.length / k) + 1;
    s = "<table>";
    for (var i = 0; i < row; i++) {
        s += "<tr>";
        for (var j = 0; j < k; j++) {
            s += "<td><img src='Images/" + imgname[i * k + j] + "'" + "class = 'hinh'" +  ">" + "</td>";

        }
        s += "</tr>";
    }
    s += "</table>";
    //dien k anh tren mot hang cos gia san pham-------------------------------------------------------------------------------------------------------------------------                
    if (imgname.length % k == 0)
        row = imgname.length / k;
    else
        row = Math.floor(imgname.length / k) + 1;
    s = "<table>";
    for (var i = 0; i < row; i++) {
        s += "<tr>";
        for (var j = 0; j < k; j++) {
            s += "<td><img src='Images/" + imgname[i * k + j] + "'" + "class = 'hinh'" + ">" + "<p><a href='#' target='_blank'><img src='Images/cart2.png'></a>Giá của sản phẩm: " + price[i % 5] + "0,000 VND</p></td>";

        }
        s += "</tr>";
    }
    s += "</table>";
    // dien anh chan le----------------------------------------------------------------------------------------------------------------------------
//                    for (var i = 0; i < imgname.length; i++) {
//                        if (i % 2 == 0) {
//                            s += "<img src ='" + imgname[i] + "' class='odd'>";
//                            s += "<p>Gia cua san pham: " + price[i % 5] + "0,000</p>";
//                        } else {
//                            s += "<img src ='" + imgname[i] + "' class='even'>";
//                            s += "<p>Gia cua san pham: " + price[i % 5] + "0,000</p>";
//                        }
//                    }
//                 das
//------------------------------------------------------------------------------------------------------------------------------
    document.getElementById('noichuaanh').innerHTML = s;
}

var objProduct = [
	"thiên thanh",
"shop", "thời trang", "giầy dép", "quần áo", "mắt kính"
];

function search() {
	var inp = document.getElementById('inp').value;

	for(var i = 0; i < objProduct.length; i++) {
		// check is user input matches username and password of a current index of the objPeople array
		if(inp === objProduct[i]) {
			alert("Đã tìm thấy");
			// stop the function if this is found to be true
                        //document.getElementById("login").innerHTML = objPeople[i].username + " loged in !!!";
			return;
		}
	}
	alert("Không tìm thấy");
}

var objPeople = [
	{ // Object @ 0 index
		username: "nam1",
		password: "123456"
	},
	{ // Object @ 1 index
		username: "nam2",
		password: "123456"
	},
	{ // Object @ 2 index
		username: "nam3",
		password: "123456"
	}

];

function getInfo() {
	var username = document.getElementById('username').value;
	var password = document.getElementById('password').value;

	for(var i = 0; i < objPeople.length; i++) {
		// check is user input matches username and password of a current index of the objPeople array
		if(username === objPeople[i].username && password === objPeople[i].password) {
			window.alert(username + " is logged in!!!");
			// stop the function if this is found to be true
                        document.getElementById("login").innerHTML = objPeople[i].username + " loged in !!!";
			return;
		}
	}
	window.alert("incorrect username or password");
}

function hrefCall() {
    document.getElementById('GoToHref').click();
    getInfor2();
}

function triggerMe() {
    var DelayhrefCall;
    //include all code for what triggerMe() must do, then as the last line add
    DelayhrefCall = window.setTimeout(hrefCall, 500); 
    //500 millisecond delay, change time as desired
}

function getInfo2() {
    var username = document.getElementById('account_su').value;
            //window.alert(username);
    document.getElementById("login").innerHTML = username + " loged in !!!";
}

function signUp() {
    window.open("dangki.html", "_blank")
}



function check() {
    var c = true;

    var acc = document.getElementById("account").value;
    if (acc == "") {
        document.getElementById("z-acc").innerHTML = "<span style='color:#8C0209,font-weight:bold'>Bạn chưa nhập</span>";
        c = false;
    } else c = true;

    

    var pass = document.getElementById("mk").value;
    if (pass == "") {
        document.getElementById("z-mk").innerHTML = "<span style='color:#8C0209,font-weight:bold'>Bạn chưa nhập</span>";
        c = false;

    } else c = true;

    var pass1 = document.getElementById("mk1").value;
    if (pass1 == "") {
        document.getElementById("z-mk").innerHTML = "<span style='color:#8C0209,font-weight:bold'>Bạn chưa nhập</span>";
        c = false;

    } else {
        if (pass == pass1) {
            document.getElementById('z-mk1').innerHTML = "Mật khẩu đã khớp";
            c = true;
        } else {
            document.getElementById('z-mk1').innerHTML = "<span color='#8C0209'>Mật khẩu chưa khớp</span>";
            c = false;
        }
    }

    var name = document.getElementById("fullname").value;
    if (name == "") {
        document.getElementById("z-name").innerHTML = "<span style='color:#8C0209,font-weight:bold'>Bạn chưa nhập</span>";
        c = false;

    } else c = true;

    return c;
}

function XacNhan() {
    if (check() == true) {
        var kq = "";
        var username = document.getElementById("account").value;
        var fullname = document.getElementById("fullname").value;
        var password = document.getElementById("mk").value;
        var DOB = document.getElementById("DOB").value;
        var job = document.getElementById("JOB");
        var mail = document.getElementById("email").value;
        var phone = document.getElementById("phone").value;
        var note = document.getElementById("note").value;

        objPeople.push({
            username: username,
            password: password
        });
        kq = "<b>Xác nhận thông tin</b><br />";
        kq += "<b>Tên đăng nhập:</b> " + username + "<br />";
        kq += "<b>Họ tên:</b> " + fullname + "<br />";
        kq += "<b>Ngày sinh:</b> " + DOB + "<br />";
        kq += "<b>Nghề nghiệp:</b> " + job.options[job.selectedIndex].innerText + "<br />";
        kq += "<b>Email:</b> " + mail + "<br />";
        kq += "<b>Điện thoại:</b> " + phone + "<br />";
        kq += "<b>Ghi chú:</b> " + note + "<br />";
        document.getElementById("ThongTin").innerHTML=kq;
    } else {
        document.getElementById("ThongTin").innerHTML = "<b>Nhập lại thông tin</b><br/>";
    }
    return false;

}
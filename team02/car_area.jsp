<%@ page import="team02.pojo.User02" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css02/car_area.css">
    <title>停车点地图</title>
    <style>
        #map {
            width: 100%;
            height: 500px;
        }
        .custom-marker {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #4CAF50;
            border: 2px solid #ffffff;
            color: #ffffff;
            text-align: center;
            line-height: 40px;
            font-weight: bold;
            font-size: 16px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.3);
            position: absolute;
            transform: translate(-50%, -50%);
            cursor: pointer;
        }
    </style>
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null==user){
        response.sendRedirect("login02.jsp");
    }
    else{

%>

<div class="top-left-corner">
    <img src="https://eb118-file.cdn.bcebos.com/upload/31ead0e112454c2db41058776c8dc930_1118830610.png" class="avatar" alt="用户头像">
    <span class="username"><%= user.getName() %></span>
</div>
<div class="container">
    <nav class="sidebar">
        <ul>
            <li class="menu-item">停车管理
                <ul class="submenu">
                    <li><a href="car_area.jsp">存放地信息</a></li>
                    <li><a href="car_stop.jsp">车辆停放</a></li>
                    <li><a href="illegal?phone=<%=user.getPhone()%>">停车记录</a></li>
                </ul>
            </li>

            <li class="menu-item">充电管理
                <ul class="submenu">
                    <li><a href="cdz?method=showplace&phone=<%=user.getPhone()%>">充电</a></li>
                    <li><a href="cdz?method=showcdreport&phone=<%=user.getPhone()%>">充电记录</a></li>
                    <li><a href="cdz?method=cdzfee&phone=<%=user.getPhone()%>">充电桩缴费</a></li>
                </ul>
            </li>

            <li class="menu-item">电池管理
                <ul class="submenu">
                    <li><a href="getbattery.jsp">拿取电池</a></li>
                    <li><a href="backbattery.jsp">归还电池</a></li>
                    <li><a href="batterydetail?method=report&phone=<%=user.getPhone()%>">电池借用记录</a></li>
                    <li><a href="batterydetail?method=batteryfee&phone=<%=user.getPhone()%>">电池缴费</a></li>
                </ul>
            </li>

            <li class="menu-item">车辆管理
                <ul class="submenu">
                    <li><a href="car?phone=<%=user.getPhone()%>&method=selectall">车辆信息查询</a></li>
                    <li><a href="car_add.jsp">新增车辆</a></li>
                    <li><a href="car_give.jsp">车辆过户</a></li>
                    <li><a href="car?phone=<%=user.getPhone()%>&method=baofei">车辆报废</a></li>
                </ul>
            </li>

            <li class="menu-item">账户管理
                <ul class="submenu">
                    <li><a href='lookInformations.jsp'>查看个人信息</a></li>
                    <li><a href='UpdateUser.jsp'>修改个人信息</a></li>
                    <li><a href='changePassword.jsp'>修改密码</a></li>
                    <li><a href='recharge.jsp'>账户充值</a></li>
                    <li><a href='before_delete.jsp'>注销账户</a></li>
                    <li><a href='login02.jsp'>重新登入</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <!-- 右侧主要内容区域 -->
    <div class="main-content">
    <!-- 地图容器 -->
    <div id="map"></div>
    <!-- 用于显示点击后的停车点信息 -->
    <div id="car_area" style="padding: 20px; background-color: #f4f4f4; margin-top: 20px;">
    </div>

        <!-- 广告信息 -->
        <div class="ad-banner">
            <h3>限时优惠！</h3>
            <p>现在购买电动车，立享8折优惠！赶紧行动吧！</p>
        </div>

        <!-- 安全提示 -->
        <div class="safety-tips">
            <h3>骑行电动车安全提示</h3>
            <ul>
                <li>骑行前请检查刹车、轮胎等重要部件，确保安全。</li>
                <li>遵守交通规则，骑行时佩戴安全头盔。</li>
                <li>避免高速行驶，特别是在复杂路况下。</li>
                <li>请勿在夜间无灯光的情况下骑行，确保可见性。</li>
            </ul>
        </div>
    </div>

</div>




<%--<!-- 地图容器 -->--%>
<%--<div id="map"></div>--%>
<%--<!-- 用于显示点击后的停车点信息 -->--%>
<%--<div id="car_area" style="padding: 20px; background-color: #f4f4f4; margin-top: 20px;">--%>
<%--    <!-- 停车点详细信息将在这里展示 -->--%>
<%--</div>--%>

<!-- 引入腾讯地图 API -->
<script charset="utf-8" src="https://map.qq.com/api/js?v=2.exp&key=RMOBZ-CLFYZ-WEYXX-ZXV3U-XE7D6-P2FO3"></script>

<script>
    var map;
    var infoWindow;

    function initMap() {
        map = new qq.maps.Map(document.getElementById('map'), {
            center: new qq.maps.LatLng(26.034770, 119.197247),
            zoom: 16
        });
        loadParkingData();  // 加载停车点数据
    }



    // 获取停车数据
    function loadParkingData() {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "ParkingData", true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var parkingData = JSON.parse(xhr.responseText);
                displayParkingPoints(parkingData);
            }
        };
        xhr.send();
    }

    // 自定义标记
    function CustomOverlay(position, map, data) {
        this.position = position;
        this.map = map;
        this.data = data;
    }

    CustomOverlay.prototype = new qq.maps.Overlay();

    CustomOverlay.prototype.construct = function() {
        var div = this.div = document.createElement("div");
        div.className = "custom-marker";
        div.textContent = "P";  // 标记文字

        var panes = this.getPanes();
        panes.overlayMouseTarget.appendChild(div);

        var self = this;
        div.addEventListener('click', function(e) {
            e.stopPropagation();
            qq.maps.event.trigger(self, 'click');
        });

        div.addEventListener('mouseover', function(e) {
            e.stopPropagation();
            qq.maps.event.trigger(self, 'mouseover');
        });

        div.addEventListener('mouseout', function(e) {
            e.stopPropagation();
            qq.maps.event.trigger(self, 'mouseout');
        });
    };

    CustomOverlay.prototype.draw = function() {
        var overlayProjection = this.getProjection();
        var position = overlayProjection.fromLatLngToDivPixel(this.position);
        var div = this.div;
        div.style.left = position.x + 'px';
        div.style.top = position.y + 'px';
    };

    CustomOverlay.prototype.onRemove = function() {
        this.div.parentNode.removeChild(this.div);
        this.div = null;
    };

    CustomOverlay.prototype.getPosition = function() {
        return this.position;
    };

    function createCustomMarker(position, data) {
        var customOverlay = new CustomOverlay(position, map, data);
        customOverlay.setMap(map);
        return customOverlay;
    }

    // 显示停车点
    // 显示停车点
    // 显示停车点
    function displayParkingPoints(parkingData) {
        if (Array.isArray(parkingData) && parkingData.length > 0) {
            console.log('开始显示停车点，共' + parkingData.length + '个');
            parkingData.forEach(function (data, index) {
                console.log('显示第' + (index + 1) + '个停车点:', data);

                var sw = new qq.maps.LatLng(parseFloat(data.range_sw_lat), parseFloat(data.range_sw_lon));
                var ne = new qq.maps.LatLng(parseFloat(data.range_ne_lat), parseFloat(data.range_ne_lon));

                console.log('西南坐标:', sw.getLat(), sw.getLng());
                console.log('东北坐标:', ne.getLat(), ne.getLng());

                // 创建矩形（使用多边形）
                var rectangle = new qq.maps.Polygon({
                    map: map,
                    path: [
                        sw,
                        new qq.maps.LatLng(sw.getLat(), ne.getLng()),
                        ne,
                        new qq.maps.LatLng(ne.getLat(), sw.getLng())
                    ],
                    strokeColor: "#FF0000",
                    strokeWeight: 2,
                    fillColor: "#FFAAAA",
                    fillOpacity: 0.4
                });

                // 计算中心点
                var center = new qq.maps.LatLng(
                    (sw.getLat() + ne.getLat()) / 2,
                    (sw.getLng() + ne.getLng()) / 2
                );

                // 创建自定义停车图标
                var marker = createCustomMarker(center, data);
                marker.setOptions({icon: 'green'});  // 默认绿色标记

                // 悬停事件：显示简单信息窗口
                qq.maps.event.addListener(marker, 'mouseover', function() {
                    console.log("鼠标悬停，准备显示信息窗口");
                    if (infoWindow) {
                        infoWindow.close();  // 确保关闭任何已打开的窗口
                    }
                    var content = "<b>" + data.car_area_name + "</b><br>剩余停车位: " + data.remain + "</b><br>剩余充电位: " + data.cdz_count;
                    console.log('信息窗口内容:', content);

                    infoWindow = new qq.maps.InfoWindow({
                        map: map,
                        position: center,
                        content: content,
                        zIndex: 1000
                    });
                    infoWindow.open(); // 确保信息窗口打开
                });

                // 鼠标移出时关闭窗口
                qq.maps.event.addListener(marker, 'mouseout', function() {
                    console.log("鼠标移出，关闭信息窗口");
                    if (infoWindow) {
                        infoWindow.close();
                    }
                });

                // 点击事件：显示详细信息窗口并将数据放入 div
                qq.maps.event.addListener(marker, 'click', function() {
                    console.log("点击事件，准备显示详细信息窗口");
                    if (infoWindow) {
                        infoWindow.close();
                    }

                    // 更新 <div id="car_area"></div> 内容
                    var carAreaContent = "<b>" + data.car_area_name + "</b><br>" +
                        "存放地编号：" + data.car_area_id +"<br>"+
                        "存放地名称：" + data.car_area_name +"<br>"+
                        "存放地启用时间：" + data.begin_time +"<br>"+
                        "审核人: " + data.audit + "<br>" +
                        "证书号: " + data.certificate + "<br>" +
                        "剩余停车位: " + data.remain+
                        "剩余充电位: " + data.cdz_count+
                    "<a href='cdz?method=cdzlist"  + "&car_area_id=" + data.car_area_id + "'>去充电</a>" ;

                    document.getElementById("car_area").innerHTML = carAreaContent;

                    // 设定该停车点的特殊标记，改变颜色
                    marker.setOptions({icon: 'red'});  // 点击后的红色标记

                    var detailedContent =   "<b>" + data.car_area_name + "</b><br>剩余车位: " + data.remain+"剩余充电位: " + data.cdz_count;
                    console.log('详细信息窗口内容:', detailedContent);



                    infoWindow = new qq.maps.InfoWindow({
                        map: map,
                        position: center,
                        content: detailedContent,
                        zIndex: 1000
                    });
                    infoWindow.open(); // 确保信息窗口打开
                });

                console.log('已添加矩形和标记到地图');
            });
        } else {
            console.log('没有停车数据可显示');
        }
    }

    // 页面加载完成后初始化地图
    window.onload = initMap;
</script>
<%
    }
%>
</body>
</html>

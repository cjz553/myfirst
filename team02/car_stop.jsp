<%@ page import="team02.pojo.User02" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>停车管理系统</title>
    <link rel="stylesheet" href="css02/car_stop.css">
    <style>
        /* 设置地图容器的大小 */
        #map {
            width: 100%;
            height: 600px;
        }
        .popup {
            padding: 10px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            width: 200px;
        }
        /* 经纬度显示区域 */
        #coordinates {
            position: fixed;
            bottom: 20px;
            left: 20px;
            background: rgba(255, 255, 255, 0.7);
            padding: 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
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
        <!-- 显示经纬度 -->
        <div id="coordinates">经度: 0, 纬度: 0</div>

        <!-- 地图容器 -->
        <div id="map"></div>
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



<!-- 引入腾讯地图 API -->
<script src="https://map.qq.com/api/js?v=2.exp&key=RMOBZ-CLFYZ-WEYXX-ZXV3U-XE7D6-P2FO3"></script>
<script>
    var map;
    var markers = []; // 存储停车点标记
    var userId = <%= user.getPhone() %>; // 假设用户ID

    // 初始化地图
    function initMap() {
        map = new qq.maps.Map(document.getElementById('map'), {
            center: new qq.maps.LatLng(26.028770, 119.194247),
            zoom: 16
        });

        // 打印 map 对象，检查是否正确初始化
        console.log(map);

        if (map) {
            qq.maps.event.addListener(map, 'mousemove', function (event) {
                var latLng = event.latLng;
                var lat = latLng.getLat();
                var lng = latLng.getLng();
                document.getElementById('coordinates').innerHTML = '经度: ' + lng + ', 纬度: ' + lat;
            });

            qq.maps.event.addListener(map, 'dblclick', function (event) {
                var latLng = event.latLng;
                var lat = latLng.getLat();
                var lng = latLng.getLng();
                if (confirm("是否确定在此位置停车？")) {
                    var carPlate = prompt("请输入车牌号：");
                    if (carPlate) {
                        saveParkingSpot(carPlate, lat, lng);
                    }
                }
            });
        }
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

                console.log('已添加矩形和标记到地图');
            });
        } else {
            console.log('没有停车数据可显示');
        }
    }












    // 发送停车点信息到后端
    // 发送停车点信息到后端
    function saveParkingSpot(carPlate, lat, lng) {
        console.log(carPlate); console.log(lat); console.log(lng);

        // 使用 URLSearchParams 来编码数据
        const data = new URLSearchParams();
        data.append("userId", userId);
        data.append("carPlate", carPlate);
        data.append("lat", lat);
        data.append("lng", lng);

        fetch('AddParkingData', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'  // 确保使用表单数据格式
            },
            body: data.toString()  // 传递 URL 编码的参数
        })
            .then(response => response.json())
            .then(data => {
                console.log(data);
                if (data.success) {
                    // 后端返回停车点成功，更新地图
                    addParkingMarker(carPlate, lat, lng);
                } else {
                    alert("停车点保存失败，用户不存在该车辆，或该车辆已停放，或车辆已报废，或车辆充电中。请依次查看！");
                }
            })
            .catch(error => {
                console.error("请求失败:", error);
            });
    }

    // 在地图上添加停车点标记

    // In the map上添加停车点标记
    function addParkingMarker(carPlate, lat, lng) {
        console.log("Adding marker:", carPlate, lat, lng);

        lat = parseFloat(lat);
        lng = parseFloat(lng);

        if (isNaN(lat) || isNaN(lng)) {
            console.error("Invalid latitude or longitude:", lat, lng);
            return;
        }

        if (!map) {
            console.error("地图对象未初始化！");
            return;
        }

        var position = new qq.maps.LatLng(lat, lng);
        var marker = new qq.maps.Marker({
            position: position,
            map: map
        });

        console.log("Created marker:", marker);
// 创建信息窗口
        var infoWindow = new qq.maps.InfoWindow({
            map: map,
            content: "<div class='popup'>车牌号: " + carPlate + "<br>经度: " + lng + "<br>纬度: " + lat + "</div>",
            width: 500,
            height: 100
        });

// 在 marker 上绑定鼠标悬浮事件
        qq.maps.event.addListener(marker, 'mouseover', function() {
            console.log("Marker hovered!");
            console.log("车牌号:", carPlate);
            console.log("经度:", lng);
            console.log("纬度:", lat);
            infoWindow.setPosition(position);

            // 确保 infoWindow 正确打开
            infoWindow.open(map, marker);
        });

// 在 marker 上绑定鼠标移出事件
        qq.maps.event.addListener(marker, 'mouseout', function() {
            console.log("Mouse left marker");
            infoWindow.close();
        });

        // Add dblclick event to delete parking spot
        qq.maps.event.addListener(marker, 'dblclick', function() {
            if (confirm("是否确认离开此停车点？")) {
                deleteParkingSpot(carPlate, lat, lng);
            }
        });

        // Store marker data for later use (e.g., deletion)
        markers.push({ carPlate, lat, lng, marker });
    }

    // ... (rest of the code remains unchanged)


    // 删除停车点
    // 删除停车点
    function deleteParkingSpot(carPlate, lat, lng) {
        // 构建 URL 编码格式的请求体
        const params = new URLSearchParams();
        params.append('userId', userId);
        params.append('carPlate', carPlate);
        params.append('lat', lat);
        params.append('lng', lng);

        // 发送 POST 请求
        fetch('DeleteParkingSpot', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: params.toString(),  // 传递 URL 编码的 body
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    // 删除标记
                    markers.forEach(function (markerObj, index) {
                        if (markerObj.carPlate === carPlate && markerObj.lat === lat && markerObj.lng === lng) {
                            markerObj.marker.setMap(null);
                            markers.splice(index, 1);
                        }
                    });
                } else {
                    alert("删除停车点失败，请重试！");
                }
            })
            .catch(error => {
                console.error("删除停车点时发生错误:", error);
                alert("车辆已离开停放地，欢迎再次光临，请刷新页面！");
            });
    }


    // 加载用户的所有停车点
    function loadUserParkingSpots() {
        fetch('getUserParkingSpots?userId=' + userId)
            .then(response => response.json())
            .then(data => {
                if (data.success && data.parkingSpots) {
                    data.parkingSpots.forEach(function (spot) {
                        console.log(spot.carPlate);
                        console.log(spot.lat);
                        console.log(spot.lng);
                        addParkingMarker(spot.carPlate, spot.lat, spot.lng);
                    });
                } else {
                    alert("加载停车点失败！");
                }
            });
    }

    // 初始化地图
    window.onload = function () {
        initMap();
        loadUserParkingSpots();
    };
</script>

<%
    }
%>
</body>
</html>

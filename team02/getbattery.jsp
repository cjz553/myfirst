<%@ page import="team02.pojo.User02" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>电池柜地图</title>
    <link rel="stylesheet" href="css02/getbattery.css">
    <style>
        #map {
            width: 100%;
            height: 500px;
        }
        #battery {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
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

        <div id="map"></div>
        <div id="battery"></div>

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




<script src="https://map.qq.com/api/js?v=2.exp&amp;key=RMOBZ-CLFYZ-WEYXX-ZXV3U-XE7D6-P2FO3"></script>
<script>
    // 创建地图实例
    var map = new qq.maps.Map(document.getElementById('map'), {
        center: new qq.maps.LatLng(26.028770, 119.194247),
        zoom: 14
    });

    var markers = []; // 存储所有标记点
    var activeMarker = null; // 当前激活的标记点

    // 在地图加载完成后执行逻辑
    qq.maps.event.addListenerOnce(map, 'idle', function() {
        // AJAX 请求获取电池柜数据
        fetch('cupboard')
            .then(response => response.json())
            .then(data => {
                data.forEach(function(cupboard) {
                    var position = new qq.maps.LatLng(cupboard.lo, cupboard.la);

                    // 创建标记点
                    var marker = new qq.maps.Marker({
                        position: position,
                        map: map
                    });

                    markers.push(marker);

                    // 初始化信息窗体
                    var infoWindow = new qq.maps.InfoWindow({
                        map: map,
                        content: '电池柜编号:'+cupboard.cupboard_id+'剩余电池数：'+cupboard.count,
                        width: 500,
                        height: 100
                    });

                    // 鼠标悬停事件
                    qq.maps.event.addListener(marker, 'mouseover', function() {
                        // infoWindow.setContent("电池柜编号: " + cupboard.cupboard_id);
                        infoWindow.setPosition(position);
                        infoWindow.open();
                    });

                    // 鼠标移出事件
                    qq.maps.event.addListener(marker, 'mouseout', function() {
                        infoWindow.close();
                    });

                    // 点击事件
                    qq.maps.event.addListener(marker, 'click', function() {
                        // 重置所有标记点的图标
                        markers.forEach(m => m.setIcon(null));

                        // 设置当前标记点为红色
                        marker.setIcon(new qq.maps.MarkerImage(
                            'https://mapapi.qq.com/web/lbs/javascriptV2/demo/img/center.gif',
                            null,
                            null,
                            null,
                            new qq.maps.Size(20, 20)
                        ));

                        // 更新激活的标记点
                        activeMarker = marker;

                        // 显示详细信息
                        document.getElementById('battery').innerHTML =
                        "<h3>电池柜详细信息</h3>"+
                       " <p>电池柜编号: "+cupboard.cupboard_id+"</p>"+
                        "<p>位置: 纬度 "+cupboard.lo+"           "+"经度" +cupboard.la+"</p>"+
                            "<p>维修次数: "+cupboard.cupboard_frequency+"</p>"+
                            "<p>上一次维修时间: "+(cupboard.cupboard_last_repair_cupboard ? cupboard.cupboard_last_repair_cupboard : "无维修记录") +"</p>"+
                            "<p>电池柜登记时间: "+cupboard.cupboard_registration+"</p>"+
                            "<p>电池柜容纳电池: "+cupboard.cupboard_hold+"</p>"+
                            "<p>电池柜剩余电池数: "+cupboard.count+"</p>"+
                            "<form action='batterydetail' method='post'>" +
                            "<input type='hidden' name='method' value='show'>" +
                            "<input type='hidden' name='cupboard_id' value='" + cupboard.cupboard_id + "'>" +
                            "<input type='submit' value='查看电池'>" +
                            "</form>";

                });
            });
        })
        .catch(error => console.error('加载电池柜数据出错:', error));
});

// 点击地图其他区域时重置标记点
qq.maps.event.addListener(map, 'click', function() {
    if (activeMarker) {
        activeMarker.setIcon(null);
        activeMarker = null;
    }
    document.getElementById('battery').innerHTML = '';
});
</script>
<%
    }
%>
</body>
</html>


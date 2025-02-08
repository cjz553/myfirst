<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF - 8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>腾讯地图示例</title>
    <style>
        /* 设置地图容器的大小 */
        #map {
            width: 100%;
            height: 500px;
        }
    </style>
</head>

<body>

<!-- 地图容器 -->
<div id="map"></div>
<!-- 引入腾讯地图 API -->
<script src="https://map.qq.com/api/js?v=2.exp&amp;key=RMOBZ-CLFYZ-WEYXX-ZXV3U-XE7D6-P2FO3"></script>
<script>
    // 创建地图实例
    var map = new qq.maps.Map(document.getElementById('map'), {
        center: new qq.maps.LatLng(26.034770, 119.197247), // 设置地图中心坐标
        zoom: 13 // 设置地图缩放级别
    });

    // 创建一个 InfoWindow（信息窗体）实例
    var infoWindow = new qq.maps.InfoWindow({
        map: map
    });

    // 在地图上添加鼠标悬停事件监听器
    qq.maps.event.addListener(map, 'mousemove', function(event) {
        var latLng = event.latLng; // 获取鼠标当前位置的经纬度
        var content = '纬度: ' + latLng.getLat().toFixed(6) + ', 经度: ' + latLng.getLng().toFixed(6);

        // 设置并显示 InfoWindow
        infoWindow.setContent(content);
        infoWindow.setPosition(latLng);
        infoWindow.open();
    });
</script>
</body>

</html>

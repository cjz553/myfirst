<%@ page import="team02.pojo.User02" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/4
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/admin_add_place.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {

%>
<div class="top-right-corner">
    <img src="https://eb118-file.cdn.bcebos.com/upload/ee5cbfada84147a6a4bc1edb050767fc_1118141879.png" class="avatar" alt="用户头像">
    <span class="username"><%= user.getName() %></span>
</div>
<div class="container">
    <nav class="sidebar">
        <ul>
            <li class="menu-item">存放地管理
                <a href="place?method=select_place">存放地信息</a>
                <a href="admin_add_place.jsp">新增存放地</a>
            </li>

            <li class="menu-item">充电桩管理
                <a href="AdminCDZServlet?method=select_cdz">充电桩信息</a>
                <a href="AdminCDZServlet?method=show_place">新增充电桩</a>
                <a href="AdminCDZServlet?method=report_cdz">查看充电桩使用记录</a>
            </li>

            <li class="menu-item">电池柜管理
                <a href="AdminCupboardServlet?method=select_cupboard">电池柜信息</a>
                <a href="admin_add_cupboard.jsp">新增电池柜</a>
                <a href="AdminBatteryServlet?method=using_battery">查看正在使用电池</a>
                <a href="AdminBatteryServlet?method=report_battery">查看电池使用记录</a>
            </li>

            <li class="menu-item">用户车辆管理
                <a href="AdminCarServlet?method=select_stop_car">当前停放车辆</a>
                <a href="AdminCarServlet?method=select_stop_report">车辆停放记录</a>
                <a href="AdminCarServlet?method=select_car">车辆信息</a>
            </li>

            <li class="menu-item">用户账单管理
                <a href="AdminUserServlet?method=select_battery_money">电池账单</a>
                <a href="AdminUserServlet?method=select_cdz_money">充电桩账单</a>
                <a href="AdminUserServlet?method=select_user">用户信息</a>
                <a href='before_delete.jsp'>注销账户</a>
                <a href='login02.jsp'>重新登入</a>
            </li>
        </ul>
    </nav>


    <div class="search-box">
        <form action="place?method=search" method="post">
            <label for="search_input"></label><input type="text" name = "search_input" id="search_input" placeholder="搜索存放地编号、名称、证书编号等关键词...">
            <input type="submit" value="搜索">
        </form>
    </div>

    <div class="main-content">
        <main>
            <h1>新增存放地</h1>
            <form action="place?method=add" method="post">
                <input type="hidden" id="audit" name="audit" value="<%= user.getName() %>" required/><br><br>

                <label for="car_area_id">存放地编号:</label>
                <input type="text" id="car_area_id" name="car_area_id" required/><br><br>

                <label for="car_area_name">存放地名称:</label>
                <input type="text" id="car_area_name" name="car_area_name" required/><br><br>

                <label for="certificate">审核证书编号:</label>
                <input type="text" id="certificate" name="certificate" required/><br><br>

                <label for="remain">存放地最多容纳车辆数:</label>
                <input type="text" id="remain" name="remain" required/><br><br>

                <label for="range_sw_lon">范围西南角的经度:</label>
                <input type="text" id="range_sw_lon" name="range_sw_lon" required/><br><br>

                <label for="range_sw_lat">范围西南角的纬度:</label>
                <input type="text" id="range_sw_lat" name="range_sw_lat" required/><br><br>

                <label for="range_ne_lon">范围东北角的经度:</label>
                <input type="text" id="range_ne_lon" name="range_ne_lon" required/><br><br>

                <label for="range_ne_lat">范围东北角的纬度:</label>
                <input type="text" id="range_ne_lat" name="range_ne_lat" required/><br><br>

                <label><span>是否启用：</span>
                    <select name="syzt" >
                        <option value="禁用">禁用</option>
                        <option value="启用">启用</option>
                    </select>
                </label><br><br>

                <input type="submit" value="注册">
            </form>

        </main>
    </div>
</div>





<%
    }
%>
</body>
</html>

<%@ page import="team02.pojo.User02" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/4
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/admin_index.css">
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
    <h1>欢迎回来，管理员!</h1>
    <div class="main-content">
        <h1>欢迎使用大学城电动车管理系统!</h1>
        <div class="info-section">
            <p>管理系统使得大学城的电动车运营更加高效，智能化管理提升了用户体验。</p>
            <div class="ad-section">
                <h2>温馨提示</h2>
                <ul>
                    <li>骑行电动车时请佩戴头盔，确保安全。</li>
                    <li>请确保车辆停放在指定区域，以免影响通行。</li>
                    <li>如遇故障，立即联系管理员进行处理。</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="main-content">
        <h1>校园安全提示</h1>
        <div class="info-section">
            <p>为了保证广大师生的安全，校园内需要大家共同维护。请大家遵守以下安全规定，确保每个人的安全。</p>
            <div class="ad-section">
                <h2>安全须知</h2>
                <ul>
                    <li>晚上尽量避免单独外出，特别是在人烟稀少的地方。</li>
                    <li>注意保管好个人物品，贵重物品请放在安全地方。</li>
                    <li>遇到可疑人物或紧急情况，请及时拨打校园安全热线。</li>
                    <li>行走时注意周围环境，不使用过于低头看手机等可能影响注意力的行为。</li>
                    <li>保持宿舍门窗关闭，离开时检查是否已锁好。</li>
                </ul>
            </div>
        </div>
    </div>


</div>


<%
    }
%>
</body>
</html>

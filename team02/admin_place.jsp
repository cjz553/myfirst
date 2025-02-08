<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.pojo.CarArea" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/4
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/admin_place.css">

</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
        request.setCharacterEncoding("utf-8");
        List<CarArea> placelist = (List<CarArea>) request.getAttribute("placelist");
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
            <h1>电池列表</h1>
            <table class="battery-table">
                <thead>
                <tr>
                    <th>存放地编号</th>
                    <th>存放地名称</th>
                    <th>通过启用时间</th>
                    <th>通过审核人</th>
                    <th>审核证书编号</th>
                    <th>剩余容纳车辆</th>
                    <th>范围西南角的经度</th>
                    <th>范围西南角的纬度</th>
                    <th>范围东北角的经度</th>
                    <th>范围东北角的纬度</th>
                    <th>使用状态</th>
                    <th>操作</th>

                </tr>
                </thead>
                <tbody>
                <%
                    if (placelist != null && !placelist.isEmpty()) {
                        for (CarArea place : placelist) {
                %>
                <tr>
                    <td><%= place.getCar_area_id() %></td>
                    <td><%= place.getCar_area_name() %></td>
                    <td><%= place.getBegin_time() %></td>
                    <td><%= place.getAudit() %></td>
                    <td><%= place.getCertificate() %></td>
                    <td><%= place.getRemain() %></td>
                    <td><%= place.getRange_sw_lon() %></td>
                    <td><%= place.getRange_sw_lat()%></td>
                    <td><%= place.getRange_ne_lon() %></td>
                    <td><%= place.getRange_ne_lat() %></td>
                    <td><%= place.getSyzt() %></td>
                    <td>
                        <%
                            if (place.getSyzt().equals("启用")){
                        %>
                        <form action="place" method="post">
                            <input type="hidden" name="method" value="syzt">
                            <input type="hidden" name="car_area_id" value="<%= place.getCar_area_id()%>">
                            <input type="hidden" name="syzt" value="禁用">
                            <input type="submit" value="禁用">
                        </form>
                        <%
                            }else{
                        %>
                        <form action="place" method="post">
                            <input type="hidden" name="method" value="syzt">
                            <input type="hidden" name="car_area_id" value="<%= place.getCar_area_id()%>">
                            <input type="hidden" name="syzt" value="启用">
                            <input type="submit" value="启用">
                        </form>
                        <%
                            }
                        %>
                    </td>
                </tr>
                <%
                        }}
                %>
                </tbody>
            </table>
        </main>
    </div>
</div>





<%
    }
%>
</body>
</html>

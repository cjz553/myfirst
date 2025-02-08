<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.pojo.Battery" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/4
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/admin_battery.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
        request.setCharacterEncoding("utf-8");
        List<Battery> batterylist = (List<Battery>) request.getAttribute("batterylist");
        String cupboard_id = request.getParameter("cupboard_id");
        String cupboard_hold  =request.getParameter("cupboard_hold");
        String count = request.getParameter("count");
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
        <form action="AdminCupboardServlet?method=search" method="post">
            <label for="search_input"></label><input type="text" name = "search_input" id="search_input" placeholder="输入电池柜编号等关键词...">
            <input type="submit" value="搜索">
        </form>
    </div>

    <div class="search-box">
        <form action="AdminBatteryServlet?method=search" method="post">
            <label for="search_input"></label><input type="text" name = "search_input" id="search_input2" placeholder="输入电池编号等关键词...">
            <input type="submit" value="搜索">
        </form>
    </div>

    <a href="javascript:history.back()" class="back-button">返回</a>

    <div class="main-content">
        <%
            if (cupboard_id!=null){
                if (Integer.parseInt(cupboard_hold)>Integer.parseInt(count)){
        %>
        <a href="admin_add_battery.jsp?cupboard_id=<%=cupboard_id%>&cupboard_hold=<%=cupboard_hold%>&count=<%=count%>">新增电池</a>
        <%
                }
            }
        %>
        <main>
            <h1>电池</h1>
            <table class="battery-table">
                <thead>
                <tr>
                    <th>所在电池柜编号</th>
                    <th>电池编号</th>
                    <th>电池型号</th>
                    <th>电池品牌</th>
                    <th>电池最大容量</th>
                    <th>最大续航路程</th>
                    <th>安全性</th>
                    <th>电池登记时间</th>
                    <th>维修次数</th>
                    <th>上一次维修时间</th>
                    <th>上一次使用时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if ( batterylist!= null && ! batterylist.isEmpty()) {
                        for (Battery battery :  batterylist) {
                %>
                <tr>
                    <td><%= battery.getCupboard_id() %></td>
                    <td><%= battery.getBattery_id() %></td>
                    <td><%= battery.getBattery_model() %></td>
                    <td><%= battery.getBattery_pp()%></td>
                    <td><%= battery.getBattery_capacity()%></td>
                    <td><%= battery.getBattery_s()%></td >
                    <td><%= battery.getSafety() %></td>
                    <td>
                        <%
                            if (battery.getBattery_registration()!=null){
                                out.print(battery.getBattery_registration());
                            }
                            else{
                                out.print("无维修记录");
                            }
                        %>


                    </td>
                    <td><%= battery.getRepair_frequency()%>

                        <%
                            if (battery.getRepair_frequency()!=null){
                                out.print( battery.getRepair_frequency());
                            }
                            else{
                                out.print("无使用记录");
                            }
                        %>

                    </td>
                    <td>
                        <%
                            if (battery.getLast_repair_battery()==null){
                                out.print("无维修记录");
                            }
                            else{
                                out.print(battery.getLast_repair_battery());
                            }
                        %>
                    </td>
                    <td><%= battery.getLast_time() %></td>
                    <td>
                        <form action="AdminBatteryServlet?method=delete" method="post">
                            <input type="hidden" name="battery_id" value="<%= battery.getBattery_id()%>">
                            <input type="hidden" name="cupboard_id" value="<%= battery.getCupboard_id()%>">
                            <input type="submit" value="删除">
                        </form>
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

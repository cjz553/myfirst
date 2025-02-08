<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.pojo.Cupboard" %>
<%@ page import="java.util.List" %>
<%@ page import="team02.relation.CarBattery1" %>
<%@ page import="team02.relation.CarCdz" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/4
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/admin_cdz_report.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
        request.setCharacterEncoding("utf-8");
        List<CarCdz> cdzreport = (List<CarCdz>) request.getAttribute("cdzreport");
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
        <form action="AdminCDZServlet?method=search1" method="post">
            <label for="search_input"></label><input type="text" name = "search_input" id="search_input" placeholder="输入充电桩编号，车牌号，联系方式等关键词...">
            <input type="submit" value="搜索">
        </form>
    </div>

    <div class="main-content">
        <main>
            <h1>充电桩使用记录</h1>
            <table class="battery-table">
                <thead>
                <tr>
                    <th>充电桩编号</th>
                    <th>车牌号</th>
                    <th>充电开始时间</th>
                    <th>充电结束时间</th>
                    <th>充电时长</th>
                    <th>联系方式</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if ( cdzreport != null && ! cdzreport.isEmpty()) {
                        for (CarCdz cb1 :  cdzreport) {
                %>
                <tr>
                    <td><%= cb1.getCdz_id()%></td>
                    <td><%= cb1.getCph() %></td>
                    <td><%= cb1.getBegin_cd_time()%></td>
                    <td>
                        <%
                            if (cb1.getEnd_cd_time()==null){
                                out.print("充电中");
                            }
                            else{
                                out.print(cb1.getEnd_cd_time());
                            }
                        %>
                    </td>
                    <td>
                        <%
                            if (cb1.getCd_times()==null){
                                out.print("结算中");
                            }
                            else {
                                out.print(cb1.getCd_times());
                            }
                        %>
                    </td>
                    <td><%= cb1.getPhone()%></td>

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

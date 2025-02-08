<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.pojo.Cupboard" %>
<%@ page import="java.util.List" %>
<%@ page import="team02.relation.CarBattery1" %>
<%@ page import="team02.pojo.Cdz" %><%--
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
    <link rel="stylesheet" href="css02/admin_cdzlist.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
        request.setCharacterEncoding("utf-8");
        List<Cdz> cdzlist = (List<Cdz>) request.getAttribute("cdzlist");
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
        <form action="AdminCDZServlet?method=search" method="post">
            <label for="search_input"></label><input type="text" name = "search_input" id="search_input" placeholder="输入充电桩编号，存放地编号，充电桩状态等关键词...">
            <input type="submit" value="搜索">
        </form>
    </div>

    <div class="main-content">
        <main>
            <h1>充电桩列表</h1>
            <table class="battery-table">
                <thead>
                <tr>
                    <th>充电桩存放地</th>
                    <th>充电桩编号</th>
                    <th>充电速率</th>
                    <th>上一次维修时间</th>
                    <th>维修次数</th>
                    <th>充电桩登记时间</th>
                    <th>使用状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if ( cdzlist != null && ! cdzlist.isEmpty()) {
                        for (Cdz c :  cdzlist) {
                %>
                <tr>
                    <td><%= c.getCar_area_id()%></td>
                    <td><%= c.getCdz_id() %></td>
                    <td><%= c.getRate()%></td>
                    <td>
                        <%
                            if (c.getLast_repair_pile()==null){
                                out.print("无维修记录");
                            }else{
                                out.print(c.getLast_repair_pile());
                            }
                        %>
                    </td>
                    <td><%= c.getPile_repair_frequency() %></td>
                    <td><%= c.getPile_registration()%></td>
                    <td><%= c.getZt()%></td>
                   <%
                       if (c.getZt().equals("空闲")){
                   %>
                    <td>
                        <form action="AdminCDZServlet?method=delete" method="post">
                            <input type="hidden" name="cdz_id" value="<%=c.getCdz_id()%>">
                            <input type="hidden" name="car_area_id" value="<%= c.getCar_area_id()%>">
                            <input type="submit" value="删除">
                        </form>
                    </td>
                    <%
                        }
                    %>

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

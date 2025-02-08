<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.pojo.Cupboard" %>
<%@ page import="java.util.List" %><%--
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
    <link rel="stylesheet" href="css02/admin_cupboard.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
        request.setCharacterEncoding("utf-8");
        List<Cupboard> cupboardlist = (List<Cupboard>) request.getAttribute("cupboardlist");
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

    <div class="main-content">
        <main>
            <h1>电池柜列表</h1>
            <table class="battery-table">
                <thead>
                <tr>
                    <th>电池柜编号</th>
                    <th>电池柜注册时间</th>
                    <th>电池柜维修次数</th>
                    <th>电池柜上一次维修时间</th>
                    <th>容纳电池数量</th>
                    <th>当前电池数量</th>
                    <th>经度位置</th>
                    <th>纬度位置</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if ( cupboardlist != null && ! cupboardlist.isEmpty()) {
                        for (Cupboard cupboard :  cupboardlist) {
                %>
                <tr>
                    <td><%= cupboard.getCupboard_id() %></td>
                    <td><%= cupboard.getCupboard_registration() %></td>
                    <td><%= cupboard.getCupboard_frequency()%></td>
                    <td>
                        <%
                            if (cupboard.getLast_repair_cupboard()==null){
                                out.print("无维修记录");
                            }else{
                                out.print(cupboard.getLast_repair_cupboard());
                            }
                        %>
                    </td>
                    <td><%= cupboard.getCupboard_hold() %></td >
                    <td><%= cupboard.getCount() %></td>
                    <td>
                        <%
                            if (cupboard.getLo()==null){
                                out.print("位置未确认");
                            }
                            else{
                                out.print(cupboard.getLo());
                            }
                        %>
                    </td>

                    <td>
                        <%
                            if (cupboard.getLa()==null){
                                out.print("位置未确认");
                            }
                            else{
                                out.print(cupboard.getLa());
                            }
                        %>
                    </td>

                    <td>
                        <form action="AdminCupboardServlet?method=delete" method="post">
                            <input type="hidden" name="cupboard_id" value="<%= cupboard.getCupboard_id()%>">
                            <input type="hidden" name="cupboard_hold" value="<%= cupboard.getCupboard_hold()%>">
                            <input type="hidden" name="count" value="<%= cupboard.getCount()%>">
                            <input type="submit" value="删除">
                        </form>
                    </td>
                    <td>
                        <form action="AdminBatteryServlet?method=select_battery" method="post">
                            <input type="hidden" name="cupboard_id" value="<%= cupboard.getCupboard_id() %>">
                            <input type="hidden" name="cupboard_hold" value="<%= cupboard.getCupboard_hold()%>">
                            <input type="hidden" name="count" value="<%= cupboard.getCount()%>">
                            <input type="submit" value="电池管理">
                        </form>
                    </td>
                    <%
                        if (cupboard.getCupboard_hold()>cupboard.getCount()){
                    %>
                    <td>
                        <form action="admin_add_battery.jsp" method="post">
                            <input type="hidden" name="cupboard_id" value="<%= cupboard.getCupboard_id() %>">
                            <input type="hidden" name="cupboard_hold" value="<%= cupboard.getCupboard_hold()%>">
                            <input type="hidden" name="count" value="<%= cupboard.getCount()%>">
                            <input type="submit" value="新增电池">
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

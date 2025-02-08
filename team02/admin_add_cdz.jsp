<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.pojo.CarArea" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/4
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/admin_add_cdz.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
        request.setCharacterEncoding("utf-8");


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
            <h1>新增充电桩</h1>
            <form action="AdminCDZServlet?method=add" method="post">

                <label><span>选择存放地编号：</span>
                    <select name="car_area_id" required>
                        <!-- 默认空选项 -->
                        <option value=""></option>

                        <!-- 通过 JSP 遍历 placelist 来生成动态选项 -->
                        <%
                            List<CarArea> placelist = (List<CarArea>) request.getAttribute("placelist");
                            if (placelist != null) {
                                for (CarArea carArea : placelist) {
                                    String grade = carArea.getCar_area_id(); // 假设 CarArea 有一个 getGrade 方法
                        %>
                        <option value="<%= grade %>"><%= grade %></option>
                        <%
                                }
                            }
                        %>
                    </select>
                </label>


                <label for="cdz_id">充电桩编号:</label>
                <input type="text" id="cdz_id" name="cdz_id" required/><br><br>

                <label for="rate">充电速率:</label>
                <input type="text" id="rate" name="rate" required/><br><br>

                <label for="last_repair_pile">上一次维修时间:</label>
                <input type="date" id="last_repair_pile" name="last_repair_pile"><br><br>

                <label for="pile_repair_frequency">维修次数:</label>
                <input type="text" id="pile_repair_frequency" name="pile_repair_frequency" required/><br><br>


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

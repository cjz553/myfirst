<%@ page import="team02.pojo.User02" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/12/31
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/backbattery2.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null==user){
        response.sendRedirect("login02.jsp");
    }
    else{
        String cupboard_id = request.getParameter("cupboard_id");
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
                    <li><a href="illegal?phone=<%=user.getPhone()%>">违规停车记录</a></li>
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

        <div id="Battery">
            <h2>填写电池归还信息</h2>
            <form action="batterydetail?method=back" method="post">
                <label for="battery_id">输入归还电池编号:</label>
                <input type="text" id="battery_id" name="battery_id" required/><br><br>
                <input type="hidden" name="cupboard_id" value=<%=cupboard_id%> >
                <input type="hidden" name="phone" value=<%=user.getPhone()%> >
                <input type="submit" value="归还">
            </form>
        </div>

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



<%
    }
%>
</body>
</html>

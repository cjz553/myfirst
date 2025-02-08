<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.relation.AreaCar" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/2
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css02/illegal.css">
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null==user){
        response.sendRedirect("login02.jsp");
    }
    else{
        request.setCharacterEncoding("utf-8");
        List<AreaCar> illegallist = (List<AreaCar>) request.getAttribute("illegallist");
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
                    <li><a href="illegal?phone=<%=user.getPhone()%>">停车记录</a></li>
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
        <main>
            <h1>停车记录</h1>
            <table border="1">
                <thead>
                <tr>
                    <th>车牌号</th>
                    <th>纬度</th>
                    <th>经度</th>
                    <th>是否违规停车</th>
                    <th>存放地编号</th>
                    <th>开始停放时间</th>
                    <th>停放结束时间</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if (illegallist != null && !illegallist.isEmpty()) {
                        for (AreaCar illegal: illegallist) {
                %>
                <tr>
                    <td><%= illegal.getCph() %></td>
                    <td><%= illegal.getLa() %></td>
                    <td><%= illegal.getLo() %></td>
                    <td><%= illegal.getWt() %></td>
                    <td><%= illegal.getCar_area_id() %></td>
                    <td><%= illegal.getBegin_time() %></td>
                    <td>
                        <%
                            if (illegal.getEnd_time() != null) {
                                out.print(illegal.getEnd_time());
                            } else {
                                out.print("车辆停放中");
                            }
                        %>
                    </td>
                </tr>
                <%
                        }
                    }
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

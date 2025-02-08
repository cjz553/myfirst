<%@ page import="team02.pojo.User02" %>
<%@ page import="team02.pojo.Battery" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025/1/5
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        /* 页面容器样式 */
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            font-family: Arial, sans-serif;
            background-color: #f4f9fc; /* 背景色 */
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* 标题样式 */
        .info-title {
            font-size: 24px;
            font-weight: bold;
            color: #007bff; /* 蓝色 */
            margin-bottom: 20px;
        }

        /* 列表样式 */
        .info-list {
            list-style-type: none;
            padding: 0;
        }

        .info-list li {
            margin-bottom: 12px;
            font-size: 16px;
            line-height: 1.8;
            color: #333;
        }

        .info-list li span:first-child {
            font-weight: bold;
            color: #007bff; /* 蓝色 */
        }

        .info-list li span:last-child {
            color: #555;
        }

        /* 广告信息样式 */
        .ad-banner {
            background-color: #e7f3ff; /* 浅蓝背景 */
            padding: 20px;
            border-radius: 8px;
            margin-top: 30px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .ad-banner h3 {
            font-size: 22px;
            color: #0056b3; /* 深蓝色 */
            font-weight: bold;
            margin-bottom: 10px;
        }

        .ad-banner p {
            font-size: 18px;
            color: #007bff; /* 蓝色 */
            font-weight: 600;
        }

        /* 鼠标悬停效果 */
        .ad-banner:hover {
            background-color: #d0e7ff; /* 悬停时背景颜色变浅 */
            cursor: pointer;
        }

        /* 响应式布局 */
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }

            .info-title {
                font-size: 20px;
            }

            .info-list li {
                font-size: 14px;
            }

            .ad-banner h3 {
                font-size: 20px;
            }

            .ad-banner p {
                font-size: 16px;
            }
        }

    </style>
</head>
<body>
<%
    User02 user = (User02) session.getAttribute("user");
    if (null == user) {
        response.sendRedirect("login02.jsp");
    } else {
        request.setCharacterEncoding("utf-8");
        Battery  battery = (Battery) request.getAttribute("battery");
%>
<div class="container">
    <div class="info-title"><%=battery.getBattery_id()%>的详细信息</div>
    <ul class="info-list">
        <li><span>电池编号:</span><span><%= battery.getBattery_id()%></span></li>
        <li><span>电池型号:</span><span><%= battery.getBattery_model() %></span></li>
        <li><span>电池品牌:</span><span><%= battery.getBattery_pp() %></span></li>
        <li><span>电池最大容量:</span><span><%= battery.getBattery_capacity()%></span></li>
        <li><span>最大续航路程:</span><span><%= battery.getBattery_s()%></span></li>
        <li><span>安全性:</span><span><%= battery.getSafety() %></span></li>
        <li><span>电池登记时间:</span><span><%= battery.getBattery_registration()%></span></li>
        <li><span>上一次维修时间:</span><span>
        <%
            if (battery.getLast_repair_battery()==null){
                out.print("无维修记录");
            }else {
                out.print(battery.getLast_repair_battery());
            }
        %>
        </span></li>
        <li><span>上一次使用时间:</span><span><%= battery.getRepair_frequency() %></span></li>
    </ul>
</div>


<!-- 广告信息 -->
<div class="ad-banner">
    <h3>限时优惠！</h3>
    <p>现在购买电池，立享8折优惠！赶紧行动吧！</p>
</div>
<a href="javascript:history.back()" class="back-button">返回</a>




<%
    }
%>
</body>
</html>

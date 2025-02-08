<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/12/12
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css02/login.css">
    <title>登入</title>
</head>
<body>

<div id="loginForm">
    <h2>登入</h2>
    <form action="user02" method="get">
        <input type="text" name="student_id" placeholder="学号" required>
        <input type="password" name="password" placeholder="密码" required>
        <input type="submit" value="登入">
        <button type="button" onclick="showRegisterForm()">注册</button>
        <button type="button" onclick="showForgotPasswordForm()">忘记密码</button>

    </form>
</div>

<div id="registerForm" class="hidden">
    <h2>注册</h2>
    <form action="user02" method="post">
        <label for="name">姓名:</label>
        <input type="text" id="name" name="name" required/><br><br>

        <label for="password">密码:</label>
        <input type="password" id="password" name="password" required/><br><br>

        <label for="phone">电话:</label>
        <input type="text" id="phone" name="phone" required/><br><br>

        <label for="id">身份证号码:</label>
        <input type="text" name="id" id="id" required>

        <label for="student_id">学号:</label>
        <input type="text" name="student_id"  id="student_id" required>

        <label><span>年级：</span>
            <select name="grade" required>
                <option value="21级">21级</option>
                <option value="22级" checked>22级</option>
                <option value="23级">23级</option>
                <option value="24级">24级</option>
            </select>
        </label>

        <label for="school">学校:</label>
        <input type="text" name="school" id="school" required>

        <label for="profession">专业:</label>
        <input type="text" name="profession" id="profession" required>

        <input type="submit" value="注册">
        <button type="button" onclick="showLoginForm()">返回登入</button>
    </form>
</div>


<div id="forgotPasswordForm" class="hidden">
    <h2>忘记密码</h2>
    <form>
        <input type="text" id="forgotPhone" placeholder="Phone Number" required>
        <button type="button" onclick="sendVerificationCode()">发送验证码</button>
        <button type="button" onclick="showLoginForm()">返回登入</button>
    </form>
</div>

</body>
<script src="js02/login.js"></script>
</html>

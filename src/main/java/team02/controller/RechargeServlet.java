package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.User02Mapper;
import team02.pojo.User02;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RechargeServlet", urlPatterns = "/team02/rechargeServlet")
public class RechargeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        SqlSession sqlSession = null;
        PrintWriter out=response.getWriter();

        // 获取充值金额
        String amountStr = request.getParameter("amount");
        double amount = 0;

        // 判断是否是自定义金额
        if ("custom".equals(amountStr)) {
            String customAmount = request.getParameter("customAmount");
            amount = Double.parseDouble(customAmount); // 获取用户自定义的金额
        } else {
            amount = Double.parseDouble(amountStr); // 获取预设的金额
        }

        // 假设用户信息保存在 session 中
        User02 user = (User02) request.getSession().getAttribute("user");

        // 用户未登录，跳转到登录页
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        sqlSession = MyBatisUtil.createSqlSession();
        User02Mapper mapper = sqlSession.getMapper( User02Mapper.class);
        int success = mapper.updateUserBalance(user.getId(), amount);
        sqlSession.commit();
        MyBatisUtil.closeSqlSession(sqlSession);


        if (success>=1) {
            // 充值成功，提示用户并跳转到账户页面
            request.setAttribute("message", "充值成功！");
            request.getRequestDispatcher("index02.jsp").forward(request, response);
        } else {
            // 充值失败，提示用户并保持在当前页面
            request.setAttribute("message", "充值失败，请重试！");
            request.getRequestDispatcher("recharge.jsp").forward(request, response);
        }
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

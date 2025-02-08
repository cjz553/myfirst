package team02.controller;

import com.google.gson.Gson;
import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarMapper;
import team02.mapper.CupboardMapper;
import team02.pojo.Cupboard;
import team02.relation.BatteryCupboard;
import team02.relation.CarPeople;
import team02.relation.CupboardBatteryNumber;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = " CupboardServlet", urlPatterns = "/team02/cupboard")
public class CupboardServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method = request.getParameter("method");
        SqlSession sqlSession = null;
        PrintWriter out=response.getWriter();
        // 查询数据库获取电池柜数据
        sqlSession = MyBatisUtil.createSqlSession();
        CupboardMapper mapper = sqlSession.getMapper(CupboardMapper.class);
        List<Cupboard> cupboardlist = mapper.getAllCupboards();
        sqlSession.commit();
        MyBatisUtil.closeSqlSession(sqlSession);

        // 将数据转为 JSON 格式
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(cupboardlist);

        // 返回数据
        response.getWriter().write(jsonResponse);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

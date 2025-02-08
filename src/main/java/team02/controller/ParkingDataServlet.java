package team02.controller;

import com.google.gson.Gson;
import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarAreaMapper;
import team02.pojo.CarArea;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ParkingDataServlet", urlPatterns = "/team02/ParkingData")
public class ParkingDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.createSqlSession();
        CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
        List<CarArea> CarAreaslist = mapper.CarAreaslist();
        sqlSession.commit();
        MyBatisUtil.closeSqlSession(sqlSession);
        // 将数据转为 JSON 格式并写入响应
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(CarAreaslist);
        response.getWriter().write(jsonResponse);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

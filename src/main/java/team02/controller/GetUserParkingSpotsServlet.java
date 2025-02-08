package team02.controller;

import com.google.gson.Gson;
import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarAreaMapper;
import team02.pojo.CarArea;
import team02.relation.AreaCar2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@WebServlet(name = "GetUserParkingSpotsServlet", urlPatterns = "/team02/getUserParkingSpots")
public class GetUserParkingSpotsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");  // 修改为返回 JSON 格式
        String phone = request.getParameter("userId");

        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
        List<AreaCar2> areaCarList = mapper.AreaCarlistByPhone(phone);  // 从数据库获取停车点数据
        sqlSession.commit();
        MyBatisUtil.closeSqlSession(sqlSession);

        // 创建停车点数据的格式，方便前端使用
        List<Map<String, Object>> parkingSpots = new ArrayList<>();
        for (AreaCar2 areaCar : areaCarList) {
            Map<String, Object> spot = new HashMap<>();
            spot.put("carPlate", areaCar.getCph());
            spot.put("lat", areaCar.getLa());
            spot.put("lng", areaCar.getLo());
            parkingSpots.add(spot);
        }
        System.out.println("11111");
        System.out.println(parkingSpots);

        // 创建响应的 JSON 对象
        Gson gson = new Gson();
        Map<String, Object> responseMap = new HashMap<>();
        responseMap.put("success", true);
        responseMap.put("parkingSpots", parkingSpots);
        System.out.println("22222");
        System.out.println(responseMap);

        // 将数据转为 JSON 格式并写入响应
        String jsonResponse = gson.toJson(responseMap);
        response.getWriter().write(jsonResponse);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        doPost(request, response);
    }
}

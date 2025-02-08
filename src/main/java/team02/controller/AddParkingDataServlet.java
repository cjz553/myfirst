package team02.controller;

import com.google.gson.Gson;
import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarAreaMapper;
import team02.mapper.CarMapper;
import team02.mapper.CdzMapper;
import team02.pojo.Car;
import team02.pojo.CarArea;
import team02.relation.AreaCar;
import team02.relation.AreaCar2;
import team02.relation.CarCdz;
import team02.relation.CarPeople;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "AddParkingDataServlet", urlPatterns = "/team02/AddParkingData")
public class AddParkingDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String cph = request.getParameter("carPlate");
        String laStr = request.getParameter("lat");
        String loStr = request.getParameter("lng");
        String phone = request.getParameter("userId");

        SqlSession sqlSession = MyBatisUtil.createSqlSession();
        CarAreaMapper mapper11 = sqlSession.getMapper(CarAreaMapper.class);
        CarPeople carpeople = mapper11.FindCarByCPhAndPhone(phone, cph);//用户是否存在该车辆
        AreaCar2 areacar2 = mapper11.FindCarReportByCPhAndPhone(phone, cph);//车辆是否已停放
        CarMapper mapper22 = sqlSession.getMapper(CarMapper.class);
        Car car = mapper22.FindCarByphone(cph);//车辆是否已报废
        CdzMapper mapper33= sqlSession.getMapper(CdzMapper.class);
        CarCdz carcdz = mapper33.FindCarCdByCph(cph, phone);//车辆是否正在充电
        if (carpeople!=null&areacar2==null&car==null&carcdz==null){



        if (laStr == null || loStr == null || laStr.isEmpty() || loStr.isEmpty()) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // 400 Bad Request
            response.getWriter().write("{\"success\": false, \"message\": \"Invalid latitude or longitude\"}");
            return;
        }

        int o = 0;
        CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
        List<CarArea> CarAreaslist = mapper.CarAreaslist();

        for (CarArea cararea : CarAreaslist) {
            int i= 0;int j=0;int k=0;
            try {
                // 将经纬度字符串转换为 double
                double rangeNeLat = Double.parseDouble(cararea.getRange_ne_lat());  // 东北角纬度
                double rangeNeLon = Double.parseDouble(cararea.getRange_ne_lon());  // 东北角经度
                double rangeSwLat = Double.parseDouble(cararea.getRange_sw_lat());  // 西南角纬度
                double rangeSwLon = Double.parseDouble(cararea.getRange_sw_lon());  // 西南角经度

                double las = Double.parseDouble(laStr);  // 将纬度字符串转换为double
                double los = Double.parseDouble(loStr);  // 将经度字符串转换为double

                System.out.println("急急急");
                System.out.println(las);
                System.out.println(los);

                // 判断该点是否在当前停车区域范围内
                if (las >= rangeSwLat && las <= rangeNeLat && los >= rangeSwLon && los <= rangeNeLon) {
                    o = o + 1;
                    // 点在当前停车区域范围内，获取区域ID
                    String car_area_id = cararea.getCar_area_id();
                    // 将 la 和 lo 转换回字符串
                    String la = Double.toString(las);
                    String lo = Double.toString(los);

                    AreaCar2 ac2 = new AreaCar2();
                    ac2.setCar_area_id(car_area_id);
                    ac2.setCph(cph);
                    ac2.setLa(la);
                    ac2.setLo(lo);
                    ac2.setPhone(phone);
                    i = mapper.addAreaCar2(ac2);

                    AreaCar ac = new AreaCar();
                    ac.setCar_area_id(car_area_id);
                    ac.setCph(cph);
                    ac.setLa(la);
                    ac.setLo(lo);
                    ac.setWt("正常停车");
                    ac.setPhone(phone);
                   j = mapper.addAreaCar(ac);
                   k = mapper.RemoveRemain(car_area_id);

                }
                if (i>=1&j>=1&k>=1){
                    break;
                }

            } catch (NumberFormatException e) {
                e.printStackTrace(); // 捕捉 NumberFormatException 错误并打印栈信息
            }
        }

        if (o == 0) {
            String car_area_id = "未在车辆存放地内";
            AreaCar2 ac2 = new AreaCar2();
            ac2.setCar_area_id(car_area_id);
            ac2.setCph(cph);
            ac2.setLa(laStr);
            ac2.setLo(loStr);
            ac2.setPhone(phone);
            System.out.println(ac2.getCph());
            int i = mapper.addAreaCar2(ac2);

            AreaCar ac = new AreaCar();
            ac.setCar_area_id(car_area_id);
            ac.setCph(cph);
            ac.setLa(laStr);
            ac.setLo(loStr);
            ac.setWt("违规停车");
            ac.setPhone(phone);
            int j = mapper.addAreaCar(ac);
        }


        sqlSession.commit();
        MyBatisUtil.closeSqlSession(sqlSession);

        // 创建响应的 JSON 对象
        Gson gson = new Gson();
        Map<String, Object> responseMap = new HashMap<>();

            responseMap.put("success", true);
            // 将数据转为 JSON 格式并写入响应
            String jsonResponse = gson.toJson(responseMap);
            response.getWriter().write(jsonResponse);
        }
        else{
            // 创建响应的 JSON 对象
            Gson gson = new Gson();
            Map<String, Object> responseMap = new HashMap<>();

            responseMap.put("success", false);
            // 将数据转为 JSON 格式并写入响应
            String jsonResponse = gson.toJson(responseMap);
            response.getWriter().write(jsonResponse);
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);


    }
}

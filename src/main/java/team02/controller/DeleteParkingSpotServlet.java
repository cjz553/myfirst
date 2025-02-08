package team02.controller;

import com.google.gson.Gson;
import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarAreaMapper;
import team02.pojo.CarArea;
import team02.relation.AreaCar;
import team02.relation.AreaCar2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "DeleteParkingSpotServlet", urlPatterns = "/team02/DeleteParkingSpot")
public class DeleteParkingSpotServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String cph = request.getParameter("carPlate");
        String laStr = request.getParameter("lat");
        String loStr = request.getParameter("lng");
        String phone = request.getParameter("userId");

        System.out.println("开始");
        System.out.println(cph);
        System.out.println(phone);
        System.out.println(loStr);
        System.out.println(laStr);

        if (laStr == null || loStr == null || laStr.isEmpty() || loStr.isEmpty()) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // 400 Bad Request
            response.getWriter().write("{\"success\": false, \"message\": \"Invalid latitude or longitude\"}");
            return;
        }


        int o = 0;

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.createSqlSession();
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

            // 假设la和lo是要检查的点的纬度和经度（字符串）
            double las = Double.parseDouble(laStr);  // 将纬度字符串转换为double
            double los = Double.parseDouble(loStr);  // 将经度字符串转换为double

            System.out.println("急急急");
            System.out.println(las);
            System.out.println(los);

            // 判断该点是否在当前停车区域范围内
            if (las >= rangeSwLat && las <= rangeNeLat && los >= rangeSwLon && los <= rangeNeLon) {
                System.out.println("急急急222");
                System.out.println(las);
                System.out.println(los);
                o = o+1;
                // 点在当前停车区域范围内，获取区域ID
                String car_area_id = cararea.getCar_area_id();
                // 执行相应操作，如返回该car_area_id，或者做其他处理
                // 将 la 和 lo 转换回字符串
                String la = Double.toString(las);
                String lo = Double.toString(los);

                AreaCar2 ac2 = new AreaCar2();
                ac2.setCar_area_id(car_area_id);
                ac2.setCph(cph);
                ac2.setLa(la);
                ac2.setLo(lo);
                ac2.setPhone(phone);
                i = mapper.deleteAreaCar2(ac2);
                System.out.println("one");
                System.out.println(i);

                AreaCar ac = new AreaCar();
                ac.setCar_area_id(car_area_id);
                ac.setCph(cph);
                ac.setLa(la);
                ac.setLo(lo);
                ac.setWt("正常停车");
                ac.setPhone(phone);
                j = mapper.updateAreaCarTime(ac);
                System.out.println("tow");
                System.out.println(j);
                 k = mapper.AddRemain(car_area_id);
                System.out.println("three");
                 System.out.println(k);


                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);

            }
            if (i>=1&j>=1&k>=1){
                break;
            }
            } catch (NumberFormatException e) {
                e.printStackTrace(); // 捕捉 NumberFormatException 错误并打印栈信息
            }
        }
        if (o==0){
            String car_area_id="未在车辆存放地内";
            AreaCar2 ac2 = new AreaCar2();
            ac2.setCar_area_id(car_area_id);ac2.setCph(cph);ac2.setLa(laStr);
            ac2.setLo(loStr);ac2.setPhone(phone);
            try {
                int i = mapper.deleteAreaCar2(ac2);
                System.out.println("删除操作影响的行数: " + i);
            } catch (Exception e) {
                e.printStackTrace();  // 打印异常的详细信息
            }


            AreaCar ac = new AreaCar();
            ac.setCar_area_id(car_area_id);ac.setCph(cph);ac.setLa(laStr);
            ac.setLo(loStr);ac.setWt("违规停车");ac.setPhone(phone);
            int j = mapper.updateAreaCarTime(ac);
            System.out.println("修改操作影响的行数: " + j);

        }


        System.out.println("准备提交事务...");
        sqlSession.commit();
        System.out.println("事务提交成功.");

        MyBatisUtil.closeSqlSession(sqlSession);

        // 创建响应的 JSON 对象
        Gson gson = new Gson();
        Map<String, Object> responseMap = new HashMap<>();
        responseMap.put("success", true);

        // 将数据转为 JSON 格式并写入响应
        String jsonResponse = gson.toJson(responseMap);
        response.getWriter().write(jsonResponse);





    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

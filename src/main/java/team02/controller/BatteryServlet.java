package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.BatteryMapper;
import team02.mapper.CarAreaMapper;
import team02.mapper.CarMapper;
import team02.mapper.CupboardMapper;
import team02.pojo.Battery;
import team02.pojo.Car;
import team02.pojo.Cupboard;
import team02.relation.BatteryCupboard;
import team02.relation.CarBattery2;
import team02.relation.CarPeople;
import team02.relation.PeopleBattery;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "BatteryServlet", urlPatterns = "/team02/batterydetail")
public class BatteryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method = request.getParameter("method");
        SqlSession sqlSession = null;
        PrintWriter out=response.getWriter();
        if (method.equals("show")){
            String cupboard_id = request.getParameter("cupboard_id");
            // 查询数据库获取电池柜数据
            sqlSession = MyBatisUtil.createSqlSession();
            CupboardMapper mapper = sqlSession.getMapper(CupboardMapper.class);
            List<BatteryCupboard> batterylist = mapper.getBatteryCupboardByCupboard_id(cupboard_id);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("batterylist", batterylist);
            request.getRequestDispatcher("battery.jsp").forward(request, response);
        }
        else if (method.equals("look")){
            String cupboard_id = request.getParameter("cupboard_id");
            String battery_id = request.getParameter("battery_id");
            sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            Battery battery = mapper.getBatteryByID(battery_id);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("battery", battery);
            request.getRequestDispatcher("battery_detail.jsp").forward(request, response);
        }
        else if (method.equals("get")){
            String cupboard_id = request.getParameter("cupboard_id");
            String battery_id = request.getParameter("battery_id");
            String cph = request.getParameter("cph");
            String phone = request.getParameter("phone");

            sqlSession = MyBatisUtil.createSqlSession();

            CarMapper mapper22 = sqlSession.getMapper(CarMapper.class);
            Car car = mapper22.FindCarByphone(cph);//车辆是否已报废

            CarAreaMapper mapper11 = sqlSession.getMapper(CarAreaMapper.class);
            CarPeople carpeople = mapper11.FindCarByCPhAndPhone(phone, cph);//用户是否存在该车辆

            if (car==null&carpeople!=null) {

                BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
                float battery_fy = (float) 3.0;
                String battery_pay_zt = "待支付";
                int i = mapper.addcar_battery1(cph, battery_id);
                int j = mapper.addcar_battery2(cph, battery_id, phone);
                int k = mapper.addpeople_battery(battery_id, phone, battery_fy, battery_pay_zt);
                int q = mapper.deletebattery_cupboard(battery_id, cupboard_id);
                CupboardMapper mapper1 = sqlSession.getMapper(CupboardMapper.class);
                int w = mapper1.reducecount(cupboard_id);
//                int y = mapper.UpdateUseTime(battery_id);
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                String encodedIdPhone = URLEncoder.encode(battery_id, "UTF-8");
                String encodedIdCph = URLEncoder.encode(cupboard_id, "UTF-8");
                if (i >= 1 & j >= 1 & k >= 1 & q >= 1 & w >= 1 ) {
                    out.println("借用电池成功，请及时归还");
                    out.print("<a href=\"getbattery2.jsp?cupboard_id=" + encodedIdCph + "&battery_id=" + encodedIdPhone + "\">返回</a>");
                } else {
                    out.println("借用电池失败，请重试");
                    out.print("<a href=\"getbattery2.jsp?cupboard_id=" + encodedIdCph + "&battery_id=" + encodedIdPhone + "\">返回</a>");
                }
            }
            else{
                String encodedIdPhone = URLEncoder.encode(battery_id, "UTF-8");
                String encodedIdCph = URLEncoder.encode(cupboard_id, "UTF-8");
                out.println("您的车辆不存在或者已报废");
                out.print("<a href=\"getbattery2.jsp?cupboard_id=" + encodedIdCph + "&battery_id=" + encodedIdPhone + "\">返回</a>");
            }
        }
        else if (method.equals("back")){
            String battery_id = request.getParameter("battery_id");
            String cupboard_id = request.getParameter("cupboard_id");
            String phone = request.getParameter("phone");

            sqlSession = MyBatisUtil.createSqlSession();
            CupboardMapper mapper11 = sqlSession.getMapper(CupboardMapper.class);
            Cupboard cupboard = mapper11.CupboardkjNumber(cupboard_id);//充电柜是否有剩余空间
            CarPeople carpeople = mapper11.IfHaveBattery(phone, battery_id);//用户是否有这个电池
            if (cupboard==null&carpeople!=null) {
                BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
                int i = mapper.deletecar_battery1(battery_id);
                int j = mapper.reporttimecar_battery2(battery_id);
                int k = mapper.updatebatterytime(battery_id);

                CupboardMapper mapper1 = sqlSession.getMapper(CupboardMapper.class);
                int w = mapper1.updatecupboardcount(cupboard_id);
                int q = mapper1.addbattery_cupboard(cupboard_id, battery_id);

                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                String encodedIdCph = URLEncoder.encode(cupboard_id, "UTF-8");
                if (i >= 1 & j >= 1 & k >= 1 & q >= 1 & w >= 1) {
                    out.println("归还电池成功，欢迎再次使用");
                    out.print("<a href=\"backbattery2.jsp?cupboard_id=" + encodedIdCph + "&battery_id=" + "\">返回</a>");
                } else {
                    out.println("归还电池失败，请重试");
                    out.print("<a href=\"backbattery2.jsp?cupboard_id=" + encodedIdCph + "&battery_id=" + "\">返回</a>");
                }
            }
            else{
                String encodedIdCph = URLEncoder.encode(cupboard_id, "UTF-8");
                out.println("电池柜已没有剩余空间或用户不存在该电池");
                out.print("<a href=\"backbattery2.jsp?cupboard_id=" + encodedIdCph + "&battery_id=" + "\">返回</a>");
            }
        }
        else if (method.equals("report")){
            String phone = request.getParameter("phone");
            sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<CarBattery2> reportlist = mapper.SelectBatteryReport(phone);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("reportlist", reportlist);
            request.getRequestDispatcher("batteryreport.jsp").forward(request, response);
        }
        else if (method.equals("batteryfee")){
            String phone = request.getParameter("phone");
            sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<PeopleBattery> feelist = mapper.SelectBatteryFee(phone);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("feelist", feelist);
            request.getRequestDispatcher("batteryfee.jsp").forward(request, response);
        }
        else if (method.equals("feefinish")){
            String phone = request.getParameter("phone");
            String id = request.getParameter("id");
            sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);

            int j = mapper.ReduceBalance(phone);
            if (j>=1){
                mapper.FeeFinsh(id);
            }
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            String encodedMethod = URLEncoder.encode("batteryfee", "UTF-8");
            String encodedPhone = URLEncoder.encode(phone, "UTF-8");
            if (j>=1){
                out.println("支付成功，感谢您的使用");
                out.print("<a href=\"batterydetail?method=" + encodedMethod + "&phone=" + encodedPhone + "\">返回</a>");
            }
            else{
                out.println("支付失败，余额不足");
                out.print("<a href=\"batterydetail?method=" + encodedMethod + "&phone=" +  encodedPhone + "\">返回</a>");
            }
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

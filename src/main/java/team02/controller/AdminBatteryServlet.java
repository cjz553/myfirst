package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.BatteryMapper;
import team02.mapper.CupboardMapper;
import team02.pojo.Battery;
import team02.pojo.Cupboard;
import team02.relation.CarBattery1;
import team02.relation.CarBattery2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

@WebServlet(name = "AdminBatteryServlet", urlPatterns = "/team02/AdminBatteryServlet")
public class AdminBatteryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String method = request.getParameter("method");

        if (method.equals("select_battery")){
            //////////////////////////////////////////////////////////////////////////////
            String cupboard_hold = request.getParameter("cupboard_hold");
            String count = request.getParameter("count");
            /////////////////////////////////////////////////////////////////////////////垃圾代码
            String cupboard_id = request.getParameter("cupboard_id");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<Battery> batterylist = mapper.AdminBatterylist(cupboard_id);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("batterylist", batterylist);


            String encodedCupboardId = URLEncoder.encode(cupboard_id, "UTF-8");
            String encodedCount = URLEncoder.encode(count, "UTF-8");
            String encodedCupboardHold = URLEncoder.encode(cupboard_hold, "UTF-8");

            request.getRequestDispatcher("admin_battery.jsp?cupboard_id=" + encodedCupboardId
                    + "&count=" + encodedCount
                    + "&cupboard_hold=" + encodedCupboardHold).forward(request, response);

        }
        else if (method.equals("delete")){
            String battery_id = request.getParameter("battery_id");
            String cupboard_id = request.getParameter("cupboard_id");

            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            int k = mapper.DeleteBatteryAndCupboardRelation(battery_id);//1 删除电池柜和电池的联系
            int j = mapper.DeleteBattery(battery_id);//2 删除电池
            int i = mapper.AdminDeleteCupboardCount(cupboard_id);

            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.getRequestDispatcher("AdminBatteryServlet?method=select_battery&cupboard_id=" + cupboard_id).forward(request, response);
        }
        else if (method.equals("search")){
            String battery_id = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<Battery> batterylist = mapper.AdminBatterylistByBatteryID(battery_id);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("batterylist", batterylist);
            request.getRequestDispatcher("admin_battery.jsp").forward(request, response);
        }
        else if (method.equals("add")){
            ///////////////////////////////////////////////////////////////////////
            String cupboard_hold = request.getParameter("cupboard_hold");
            String count1 = request.getParameter("count");
            int countInt = Integer.parseInt(count1);

// Step 2: 将整数转换为字符串
            String count = String.valueOf(countInt+1);
            ///////////////////////////////////////////////////////////////////////垃圾代码

            String battery_id = request.getParameter("battery_id");
            String cupboard_id = request.getParameter("cupboard_id");
            String battery_model = request.getParameter("battery_model");
            String battery_pp = request.getParameter("battery_pp");
            String battery_capacity = request.getParameter("battery_capacity");
            String battery_s = request.getParameter("battery_s");
            String safety = request.getParameter("safety");
            String repair_frequency = request.getParameter("repair_frequency");
            String last_repair_battery = request.getParameter("last_repair_battery");
            String last_time = request.getParameter("last_time");
            Battery battery = new Battery();
            battery.setBattery_capacity(battery_capacity);battery.setBattery_id(battery_id);battery.setBattery_model(battery_model);
            battery.setBattery_pp(battery_pp);battery.setBattery_s(battery_s);battery.setCupboard_id(cupboard_id);battery.setSafety(safety);
            battery.setRepair_frequency(repair_frequency);
            if (last_repair_battery == null || last_repair_battery.isEmpty()) {
                // 如果没有提交 change_time，设置为 null
                battery.setLast_repair_battery(null);
            } else {
                battery.setLast_repair_battery(last_repair_battery);
            }
            if (last_time == null || last_time.isEmpty()) {
                // 如果没有提交 change_time，设置为 null
                battery.setLast_time(null);
            } else {
                battery.setLast_time(last_time);
            }
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            Battery b = mapper.getBatteryByID(battery_id);
            if (b==null) {
                int k = mapper.AddBatteryAndCupboardRelation(battery);//1 添加电池柜和电池的联系
                int j = mapper.AddBattery(battery);//2 添加电池
                int i = mapper.AdminAddCupboardCount(cupboard_id);//3.改变充电柜电池数量
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                request.getRequestDispatcher("AdminBatteryServlet?method=select_battery&cupboard_hold=" + cupboard_hold + "&count=" + count + "&cupboard_id=" + cupboard_id).forward(request, response);
            }
            else{
                out.print("该电池已注册");
                out.print("<a href=\"admin_add_battery.jsp?cupboard_id=" + cupboard_id + "&cupboard_hold=" + cupboard_hold + "&count=" + countInt +"\">返回</a>");

            }
        }
        else if (method.equals("using_battery")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<CarBattery1> carbatterylist = mapper.carbatterylist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carbatterylist", carbatterylist);
            request.getRequestDispatcher("admin_carbatterylist.jsp").forward(request, response);
        }
        else if (method.equals("report_battery")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<CarBattery2> carbatterylist2 = mapper.carbatterylist2();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carbatterylist2", carbatterylist2);
            request.getRequestDispatcher("admin_carbatterylist2.jsp").forward(request, response);
        }
        else if (method.equals("search_carbattery1")){
            String search_input  =request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<CarBattery1> carbatterylist = mapper.carbatterylistbykey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carbatterylist", carbatterylist);
            request.getRequestDispatcher("admin_carbatterylist.jsp").forward(request, response);
        }
        else if (method.equals("search_carbattery2")){
            String search_input  =request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            List<CarBattery2> carbatterylist2 = mapper.carbatterylist2bykey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carbatterylist2", carbatterylist2);
            request.getRequestDispatcher("admin_carbatterylist2.jsp").forward(request, response);
        }
        else if(method.equals("detail_battery")){
            String battery_id = request.getParameter("battery_id");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            BatteryMapper mapper = sqlSession.getMapper(BatteryMapper.class);
            Battery battery = mapper.AdminBatteryID(battery_id);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("battery", battery);
            request.getRequestDispatcher("admin_detail_battery.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarAreaMapper;
import team02.mapper.CarMapper;
import team02.mapper.CdzMapper;
import team02.pojo.Car;
import team02.pojo.CarArea;
import team02.pojo.Cdz;
import team02.relation.AreaCar2;
import team02.relation.CarCdz;
import team02.relation.CarPeople;
import team02.relation.PeopleCdz;

import javax.script.ScriptEngine;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "CDZServlet", urlPatterns = "/team02/cdz")
public class CDZServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        SqlSession sqlSession = null;
        PrintWriter out = response.getWriter();
        String method = request.getParameter("method");
        if (method.equals("showplace")) {
            String phone = request.getParameter("phone");
            // 创建会话
            sqlSession = MyBatisUtil.createSqlSession();
            CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
            List<CarArea> cararealist = mapper.CarAreaslist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cararealist", cararealist);
            request.getRequestDispatcher("cararealist.jsp").forward(request, response);

        } else if (method.equals("cdzlist")) {
            String car_area_id = request.getParameter("car_area_id");
            // 创建会话
            sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            List<Cdz> cdzlist = mapper.Cdzlist(car_area_id);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cdzlist", cdzlist);
            request.getRequestDispatcher("cdzlist.jsp").forward(request, response);

        } else if (method.equals("cd")) {
            String cph = request.getParameter("cph");
            String phone = request.getParameter("phone");
            String cdz_id = request.getParameter("cdz_id");

            sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            CarAreaMapper mapper11 = sqlSession.getMapper(CarAreaMapper.class);
            CarPeople carpeople = mapper11.FindCarByCPhAndPhone(phone, cph);//用户是否存在该车辆
            AreaCar2 areacar2 = mapper11.FindCarReportByCPhAndPhone(phone, cph);//车辆是否已停放
            CarMapper mapper22 = sqlSession.getMapper(CarMapper.class);
            Car car = mapper22.FindCarByphone(cph);//车辆是否已报废
            CdzMapper mapper33= sqlSession.getMapper(CdzMapper.class);
            CarCdz carcdz = mapper33.FindCarCdByCph(cph, phone);//车辆是否正在充电

            if (carpeople!=null&areacar2==null&car==null&carcdz==null){
                int i = mapper.AddCarCdz(cdz_id, cph, phone);
                int j = mapper.AddPeopleCdz(cdz_id, phone);
                int k = mapper.UpdateCdzZt(cdz_id);
                if (i >= 1 & j >= 1 & k >= 1) {
                    out.print("开始充电");
                    response.setHeader("refresh", "3;url=index02.jsp");
                } else {
                    out.print("充电失败");
                    response.setHeader("refresh", "3;url=index02.jsp");
                }

            }
            else {

                out.print("充电失败。用户不存在该车辆，或该车辆已停放，或车辆已报废，或车辆充电中。请依次查看！");
                response.setHeader("refresh", "3;url=index02.jsp");
            }
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);

        } else if (method.equals("showcdreport")) {
            String phone = request.getParameter("phone");
            // 创建会话
            sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            List<CarCdz> report = mapper.CarCdzReportlist(phone);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("report", report);
            request.getRequestDispatcher("carcdzreport.jsp").forward(request, response);

        } else if (method.equals("end")) {
            String phone = request.getParameter("phone");
            String cdz_id = request.getParameter("cdz_id");
            String cph = request.getParameter("cph");

                // 创建会话
                sqlSession = MyBatisUtil.createSqlSession();
                CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
                int i = mapper.UpdateCarCdz(cdz_id, cph);
                int j = mapper.UpdatePeopleCdz(cdz_id, phone);
                int k = mapper.UpdateCdzZt2(cdz_id);
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                String encodedMethod = URLEncoder.encode("showcdreport", "UTF-8");
                String encodedPhone = URLEncoder.encode(phone, "UTF-8");
                if (i>=1&j>=1&k>=1){
                    out.print("充电结束，感谢您的使用！");
                    out.print("<a href=\"cdz?method=" + encodedMethod + "&phone=" + encodedPhone +  "\">返回</a>");
                }
                else {
                    out.print("操作异常，请联系管理员");
                    out.print("<a href=\"cdz?method=" + encodedMethod + "&phone=" + encodedPhone +  "\">返回</a>");
                }
        }
        else if (method.equals("cdzfee")){
            String phone = request.getParameter("phone");
            sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            List<PeopleCdz> feelist = mapper.SelectCdzFee(phone);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("feelist", feelist);
            request.getRequestDispatcher("cdzfee.jsp").forward(request, response);
        }
        else if (method.equals("feefinish")){
            String phone = request.getParameter("phone");
            String id = request.getParameter("id");
            sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);

            int j = mapper.ReduceBalance(phone, id);
            if (j>=1){
                mapper.FeeFinsh(id);
            }
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            String encodedMethod = URLEncoder.encode("cdzfee", "UTF-8");
            String encodedPhone = URLEncoder.encode(phone, "UTF-8");
            if (j>=1){
                out.println("支付成功，感谢您的使用");
                out.print("<a href=\"cdz?method=" + encodedMethod + "&phone=" + encodedPhone + "\">返回</a>");
            }
            else{
                out.println("支付失败，余额不足");
                out.print("<a href=\"cdz?method=" + encodedMethod + "&phone=" +  encodedPhone + "\">返回</a>");
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

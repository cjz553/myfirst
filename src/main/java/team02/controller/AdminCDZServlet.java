package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.BatteryMapper;
import team02.mapper.CarAreaMapper;
import team02.mapper.CdzMapper;
import team02.pojo.Battery;
import team02.pojo.CarArea;
import team02.pojo.Cdz;
import team02.relation.CarCdz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

@WebServlet(name = "AdminCDZServlet", urlPatterns = "/team02/AdminCDZServlet")
public class AdminCDZServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String method = request.getParameter("method");
        if (method.equals("select_cdz")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            List<Cdz> cdzlist = mapper.AdminCdzlist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cdzlist", cdzlist);
            request.getRequestDispatcher("admin_cdzlist.jsp").forward(request, response);
        }
        else if (method.equals("delete")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            String cdz_id = request.getParameter("cdz_id");
            String car_area_id = request.getParameter("car_area_id");
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            int i = mapper.DeleteCarArea(cdz_id, car_area_id);
            int j = mapper.DeleteCdzByID(cdz_id);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.getRequestDispatcher("AdminCDZServlet?method=select_cdz").forward(request, response);
        }
        else if (method.equals("search")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            List<Cdz> cdzlist = mapper.AdminCdzlistKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cdzlist", cdzlist);
            request.getRequestDispatcher("admin_cdzlist.jsp").forward(request, response);
        }
        else if (method.equals("show_place")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
            List<CarArea> placelist = mapper.AdminCarAreaslist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("placelist", placelist);
            request.getRequestDispatcher("admin_add_cdz.jsp").forward(request, response);
        }
        else if (method.equals("add")){
            String car_area_id  =request.getParameter("car_area_id");
            String cdz_id = request.getParameter("cdz_id");
            String last_repair_pile = request.getParameter("last_repair_pile");
            String pile_repair_frequency = request.getParameter("pile_repair_frequency");
            String rate = request.getParameter("rate");
            Cdz c = new Cdz();
            c.setCar_area_id(car_area_id);c.setCdz_id(cdz_id);
            c.setPile_repair_frequency(pile_repair_frequency);c.setRate(rate);
            if (last_repair_pile == null || last_repair_pile.isEmpty()) {
                // 如果没有提交 change_time，设置为 null
                c.setLast_repair_pile(null);
            } else {
                c.setLast_repair_pile(last_repair_pile);
            }
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            Cdz cdz = mapper.getCdzByID(cdz_id);
            if (cdz==null) {
                int k = mapper.AddPlaceCdzRelation(c);//1 添加存放地和充电桩的关系
                int j = mapper.AddCdz(c);//2 添加充电桩
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                request.getRequestDispatcher("AdminCDZServlet?method=select_cdz").forward(request, response);
            }
            else{
                out.print("该充电桩已注册，请重新尝试");
                out.print("<a href=\"AdminCDZServlet?method=show_place" +"\">返回</a>");

            }
        }
        else if (method.equals("report_cdz")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            List<CarCdz> cdzreport = mapper.AdminCdzReport();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cdzreport", cdzreport);
            request.getRequestDispatcher("admin_cdz_report.jsp").forward(request, response);
        }
        else if(method.equals("search1")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CdzMapper mapper = sqlSession.getMapper(CdzMapper.class);
            List<CarCdz> cdzreport = mapper.AdminCdzReportByKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cdzreport", cdzreport);
            request.getRequestDispatcher("admin_cdz_report.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

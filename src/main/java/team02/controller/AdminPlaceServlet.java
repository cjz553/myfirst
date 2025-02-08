package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarAreaMapper;
import team02.pojo.CarArea;
import team02.relation.CarPeople;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "AdminPlaceServlet", urlPatterns = "/team02/place")
public class AdminPlaceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String method = request.getParameter("method");
        if (method.equals("select_place")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
            List<CarArea> placelist = mapper.AdminCarAreaslist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("placelist", placelist);
            request.getRequestDispatcher("admin_place.jsp").forward(request, response);

        }
        else if (method.equals("syzt")){
            String car_area_id = request.getParameter("car_area_id");
            String syzt = request.getParameter("syzt");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
            int i = mapper.UpdateSyzt(car_area_id, syzt);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.getRequestDispatcher("place?method=select_place").forward(request, response);
        }
        else if (method.equals("add")){
            String audit = request.getParameter("audit");
            String car_area_id = request.getParameter("car_area_id");
            String car_area_name = request.getParameter("car_area_name");
            String certificate = request.getParameter("certificate");
            String remain = request.getParameter("remain");
            String range_sw_lon = request.getParameter("range_sw_lon");
            String range_sw_lat =request.getParameter("range_sw_lat");
            String range_ne_lon = request.getParameter("range_ne_lon");
            String range_ne_lat  =request.getParameter("range_ne_lat");
            String syzt = request.getParameter("syzt");
            CarArea place = new CarArea();
            place.setAudit(audit);place.setCar_area_id(car_area_id);
            place.setCar_area_name(car_area_name);place.setCertificate(certificate);place.setRange_ne_lat(range_ne_lat);
            place.setRange_ne_lon(range_ne_lon);place.setRange_sw_lat(range_sw_lat);place.setRange_sw_lon(range_sw_lon);
            place.setRemain(Integer.parseInt(remain));place.setSyzt(syzt);

            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
            int i = mapper.AddPlace(place);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.getRequestDispatcher("place?method=select_place").forward(request, response);
        }
        else if (method.equals("search")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
            List<CarArea> placelist = mapper.AdminSearchCarAreaslist(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("placelist", placelist);
            request.getRequestDispatcher("admin_place.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

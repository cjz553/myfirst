package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarMapper;
import team02.pojo.Car;
import team02.relation.AreaCar;
import team02.relation.AreaCar2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "AdminCarServlet", urlPatterns = "/team02/AdminCarServlet")
public class AdminCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String method = request.getParameter("method");
        if (method.equals("select_stop_car")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<AreaCar2> carstoplist = mapper.AdminCarStoplist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carstoplist", carstoplist);
            request.getRequestDispatcher("admin_carstoplist.jsp").forward(request, response);
        }
        else if (method.equals("select_stop_report")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<AreaCar> carwtlist = mapper.AdminCarWtlist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carwtlist", carwtlist);
            request.getRequestDispatcher("admin_carwtlist.jsp").forward(request, response);
        }
        else if (method.equals("search")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<AreaCar2> carstoplist = mapper.AdminCarStoplistByKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carstoplist", carstoplist);
            request.getRequestDispatcher("admin_carstoplist.jsp").forward(request, response);
        }
        else if (method.equals("search1")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<AreaCar> carwtlist = mapper.AdminCarWtlistByKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carwtlist", carwtlist);
            request.getRequestDispatcher("admin_carwtlist.jsp").forward(request, response);
        }
        else if (method.equals("select_car")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<Car> carlist = mapper.AdminCarlist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carlist", carlist);
            request.getRequestDispatcher("admin_carlist.jsp").forward(request, response);
        }
        else if (method.equals("baofei")){
            String cph = request.getParameter("cph");
            String baofei = request.getParameter("baofei");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            int i = mapper.AdminUpdatebaofei(cph, baofei);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.getRequestDispatcher("AdminCarServlet?method=select_car").forward(request, response);
        }
        else if (method.equals("search_car_key")){
            String search_input;
            search_input = request.getParameter("search_input");
            if (search_input.equals("报废")){
                search_input="是";
            }
            if (search_input.equals("正常")){
                search_input="否";
            }
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<Car> carlist = mapper.AdminCarlistByKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carlist", carlist);
            request.getRequestDispatcher("admin_carlist.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

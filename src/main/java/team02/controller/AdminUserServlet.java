package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarMapper;
import team02.mapper.User02Mapper;
import team02.pojo.User02;
import team02.relation.AreaCar2;
import team02.relation.PeopleBattery;
import team02.relation.PeopleCdz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "AdminUserServlet", urlPatterns = "/team02/AdminUserServlet")
public class AdminUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String method = request.getParameter("method");
        if (method.equals("select_battery_money")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            List<PeopleBattery> peoplebatterylist = mapper.AdminPeopleBatterylist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("peoplebatterylist", peoplebatterylist);
            request.getRequestDispatcher("admin_peoplebatterylist.jsp").forward(request, response);
        }
        else if (method.equals("select_cdz_money")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            List<PeopleCdz> peoplecdzlist = mapper.AdminPeopleCdzlist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("peoplecdzlist", peoplecdzlist);
            request.getRequestDispatcher("admin_peoplecdzlist.jsp").forward(request, response);
        }
        else if (method.equals("search")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            List<PeopleBattery> peoplebatterylist = mapper.AdminPeopleBatterylistByKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("peoplebatterylist", peoplebatterylist);
            request.getRequestDispatcher("admin_peoplebatterylist.jsp").forward(request, response);
        }
        else if (method.equals("search1")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            List<PeopleCdz> peoplecdzlist = mapper.AdminPeopleCdzlistByKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("peoplecdzlist", peoplecdzlist);
            request.getRequestDispatcher("admin_peoplecdzlist.jsp").forward(request, response);
        }
        else if (method.equals("select_user")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            List<User02> peoplelist = mapper.AdminPeoplelist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("peoplelist", peoplelist);
            request.getRequestDispatcher("admin_peoplelist.jsp").forward(request, response);
        }
        else if (method.equals("black")){
            String id = request.getParameter("id");
            String zt = request.getParameter("zt");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            int i = mapper.AdminUpdateBlack(id, zt);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.getRequestDispatcher("AdminUserServlet?method=select_user").forward(request, response);
        }
        else if (method.equals("search_people_key")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            List<User02> peoplelist = mapper.AdminPeoplelistByKey(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("peoplelist", peoplelist);
            request.getRequestDispatcher("admin_peoplelist.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CarAreaMapper;
import team02.pojo.CarArea;
import team02.relation.AreaCar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "illegalServlet", urlPatterns = "/team02/illegal")
public class illegalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String phone = request.getParameter("phone");
        SqlSession sqlSession = null;
        PrintWriter out=response.getWriter();
        sqlSession = MyBatisUtil.createSqlSession();
        CarAreaMapper mapper = sqlSession.getMapper(CarAreaMapper.class);
        List<AreaCar> illegallist = mapper.SelectillegalReport(phone);
        sqlSession.commit();
        MyBatisUtil.closeSqlSession(sqlSession);
        request.setAttribute("illegallist", illegallist);
        request.getRequestDispatcher("illegal.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);

    }
}

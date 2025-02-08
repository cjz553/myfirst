package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.CupboardMapper;
import team02.pojo.Cupboard;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "AdminCupboardServlet", urlPatterns = "/team02/AdminCupboardServlet")
public class AdminCupboardServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String method = request.getParameter("method");
        if (method.equals("select_cupboard")){
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CupboardMapper mapper = sqlSession.getMapper(CupboardMapper.class);
            List<Cupboard> cupboardlist = mapper.AdminCupboardlist();
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cupboardlist", cupboardlist);
            request.getRequestDispatcher("admin_cupboard.jsp").forward(request, response);
        }
        else if (method.equals("add")){
            String cupboard_id = request.getParameter("cupboard_id");
            String cupboard_frequency = request.getParameter("cupboard_frequency");
            String last_repair_cupboard = request.getParameter("last_repair_cupboard");
            String cupboard_hold = request.getParameter("cupboard_hold");
            String lo = request.getParameter("lo");
            String la  =request.getParameter("la");
            Cupboard cupboard  = new Cupboard();
            if (last_repair_cupboard == null || last_repair_cupboard.isEmpty()) {
                // 如果没有提交 change_time，设置为 null
                cupboard.setLast_repair_cupboard(null);
            } else {
                cupboard.setLast_repair_cupboard(last_repair_cupboard);
            }
            cupboard.setLa(la);cupboard.setCupboard_frequency(cupboard_frequency);
            cupboard.setCupboard_hold(Integer.parseInt(cupboard_hold));
            cupboard.setCupboard_id(cupboard_id);cupboard.setLo(lo);

            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CupboardMapper mapper = sqlSession.getMapper(CupboardMapper.class);
            Cupboard c = mapper.getCupboardByID(cupboard_id);
            if (c==null) {
                int i = mapper.AddCupboard(cupboard);
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                request.getRequestDispatcher("AdminCupboardServlet?method=select_cupboard").forward(request, response);
            }
            else{
                out.print("该充电桩已注册");
                response.setHeader("refresh", "3;url=admin_add_cupboard.jsp");
            }
        }
        else if (method.equals("search")){
            String search_input = request.getParameter("search_input");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CupboardMapper mapper = sqlSession.getMapper(CupboardMapper.class);
            List<Cupboard> cupboardlist = mapper.AdminSearchCupboardlist(search_input);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("cupboardlist", cupboardlist);
            request.getRequestDispatcher("admin_cupboard.jsp").forward(request, response);
        }
        else if (method.equals("delete")){
            String cupboard_id = request.getParameter("cupboard_id");
            SqlSession sqlSession = MyBatisUtil.createSqlSession();
            CupboardMapper mapper = sqlSession.getMapper(CupboardMapper.class);
            int j = mapper.DeleteCupboardAndBattery(cupboard_id);//1 删除电池
            int k = mapper.DeleteCupboardAndBatteryRelation(cupboard_id);//2 删除电池柜和电池的联系
            int i = mapper.DeleteCupboard(cupboard_id);//3 删除电池柜
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.getRequestDispatcher("AdminCupboardServlet?method=select_cupboard").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);


    }
}

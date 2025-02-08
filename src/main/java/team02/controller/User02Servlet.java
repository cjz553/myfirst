package team02.controller;

import com.mapper.UserMapper;
import com.pojo.User;
import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.User02Mapper;
import team02.pojo.User02;
import team02.utils.MyBatisUtil02;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "User02Servlet", urlPatterns = {"/team02/user02"})
public class User02Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        SqlSession sqlSession = null;
        int count = 0;
        String role = request.getParameter("role");
        try {
            sqlSession = MyBatisUtil02.createSqlSession();
            User02 user = new User02();
            user.setId(request.getParameter("id"));
            user.setName(request.getParameter("name"));
            user.setPhone(request.getParameter("phone"));
            user.setStudent_id(request.getParameter("student_id"));//
            user.setGrade(request.getParameter("grade"));//
            user.setProfession(request.getParameter("profession"));
            user.setPassword(request.getParameter("password"));
            user.setSchool(request.getParameter("school"));
            User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
            List<User02> userlist = mapper.getUserByAll();
            for (User02 users : userlist) {
                if (users.getId().equals(request.getParameter("id"))) {
                    out.print("该身份证已被注册，请更换");
                    response.setHeader("refresh", "3;url=login02.jsp");
                    break;
                }
                if (users.getPhone().equals(request.getParameter("phone"))) {
                    out.print("，操作异常，该电话已被注册");
                    response.setHeader("refresh", "3;url=login02.jsp");
                    break;
                }
                if (users.getStudent_id().equals(request.getParameter("student_id"))) {
                    out.print("该学号已被注册");
                    response.setHeader("refresh", "3;url=login02.jsp");
                    break;
                }
            }
                count = sqlSession.getMapper(User02Mapper.class).addUser(user);
                sqlSession.commit();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            assert sqlSession != null;
            sqlSession.rollback();
            count = 0;
        }
        finally{
            MyBatisUtil.closeSqlSession(sqlSession);
        }
        if (count >= 1) {
            out.print("注册成功");
            response.setHeader("refresh", "3;url=login02.jsp");
        }
        else{
            out.print("注册失败");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        PrintWriter out=response.getWriter();
        String student_id = request.getParameter("student_id");
        String password = request.getParameter("password");
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.createSqlSession();
        User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
        User02 user = mapper.getUserByStudentId(student_id);
        if (user != null && user.getPassword().equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            if (user.getRole().equals("USER")) {
                if (user.getZt().equals("正常")) {
                    response.setHeader("refresh", "3;url=index02.jsp");
                }
                else{
                    out.print("账号被拉黑，请联系管理员解除");
                    response.setHeader("refresh", "3;url=login02.jsp");
                }
            } else {
                response.setHeader("refresh", "3;url=admin_index.jsp");
            }
        }
       else {
            response.sendRedirect("login02.jsp?error=true");
        }

    }
}

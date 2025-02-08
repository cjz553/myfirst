package team02.controller;

import com.mapper.UserMapper;
import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.User02Mapper;
import team02.pojo.User02;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserOperate02Servlet", urlPatterns = "/team02/operate02")
public class UserOperate02Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String type = request.getParameter("method");
        switch (type) {
            case "change":
                String id=request.getParameter("id");
                String reallypassword = request.getParameter("reallypassword");
                String currentPassword=request.getParameter("currentPassword");
                String newPassword=request.getParameter("newPassword");
                String confirmNewPassword=request.getParameter("confirmNewPassword");
                //(5)处理结果
                if (!currentPassword.equals(reallypassword)){
                    out.print("密码输入错误，请重新输入");
                    out.print("<a href=\"javascript:history.back()\" class=\"back-button\">返回</a>");
                }
                else if (!newPassword.equals(confirmNewPassword)){
                    out.print("确认密码错误，请重新输入");
                    out.print("<a href=\"javascript:history.back()\" class=\"back-button\">返回</a>");
                }
                else {
                    SqlSession sqlSession = null;

                    // 创建会话
                    sqlSession = MyBatisUtil.createSqlSession();
                    User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
                    int i = mapper.updatepassword(id, newPassword);
                    sqlSession.commit();
                    MyBatisUtil.closeSqlSession(sqlSession);
                    //(5)处理结果
                    if (i > 0) {
                        out.print("修改成功");
                        response.setHeader("refresh", "2;url=login02.jsp");
                    } else {
                        out.print("修改失败");
                        out.print("<a href=\"javascript:history.back()\" class=\"back-button\">返回</a>");
                    }
                }
                break;
            case "change_information":
                String ids=request.getParameter("id");
                String phone= request.getParameter("phone");
                String name = request.getParameter("name");
                String student_id = request.getParameter("student_id");
                String grade = request.getParameter("grade");
                String profession = request.getParameter("profession");
                String school = request.getParameter("school");
                User02 user = new User02();
                user.setSchool(school);user.setProfession(profession);user.setStudent_id(student_id);
                user.setName(name);user.setPhone(phone);user.setId(ids);user.setGrade(grade);

                SqlSession sqlSession = null;
                sqlSession = MyBatisUtil.createSqlSession();
                User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
                int i = mapper.updateUser(user);
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                //(5)处理结果
                if (i > 0) {
                    out.print("修改成功");
                    response.setHeader("refresh", "2;url=UpdateUser.jsp");
                    out.print("<a href=\"javascript:history.back()\" class=\"back-button\">返回</a>");
                } else {
                    out.print("修改失败");
                    out.print("<a href=\"javascript:history.back()\" class=\"back-button\">返回</a>");
                }


                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        PrintWriter out=response.getWriter();
        String type = request.getParameter("method");
        switch (type) {
            case "delete":
                //(5)处理结果
                String ids=request.getParameter("id");
                SqlSession sqlSession = null;
                try {
                    // 创建会话
                    sqlSession = MyBatisUtil.createSqlSession();
                    User02Mapper mapper = sqlSession.getMapper(User02Mapper.class);
                    int i = mapper.deleteUser(ids);
                    sqlSession.commit();
                    MyBatisUtil.closeSqlSession(sqlSession);
                    if (i>0){
                        out.print("注销成功...页面跳转中");
                        response.setHeader("refresh","2;url=login02.jsp");
                    }else {
                        out.print("注销失败");
                        out.print("<a href=\"javascript:history.back()\" class=\"back-button\">返回</a>");
                    }
                }catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    sqlSession.rollback();
                }
                break;
            case "change":
                break;

    }
    }
}

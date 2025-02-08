package team02.controller;

import com.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import team02.mapper.BatteryMapper;
import team02.mapper.CarAreaMapper;
import team02.mapper.CarMapper;
import team02.mapper.User02Mapper;
import team02.pojo.Battery;
import team02.pojo.Car;
import team02.pojo.User02;
import team02.relation.CarPeople;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

@WebServlet(name = "CarServlet", urlPatterns = {"/team02/car"})
public class CarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method = request.getParameter("method");
        SqlSession sqlSession = null;
        PrintWriter out=response.getWriter();
        if (method.equals("selectall")) {
            String phone = request.getParameter("phone");
            // 创建会话
            sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<CarPeople> carlist = mapper.carlist(phone);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carlist", carlist);
            request.getRequestDispatcher("car_select.jsp").forward(request, response);

        } else if (method.equals("select")) {
            String cph = request.getParameter("cph");
            sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            Car car = mapper.selectcar(cph);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("car", car);
            request.getRequestDispatcher("car_select_detail.jsp").forward(request, response);
        } else if (method.equals("add")) {
            String phone = request.getParameter("phone");
            String cph = request.getParameter("cph");
            String pp = request.getParameter("pp");
            String cjh = request.getParameter("cjh");
            String cx = request.getParameter("cx");
            String zzl = request.getParameter("zzl");
            String czrs = request.getParameter("czrs");
            String xh = request.getParameter("xh");
            String changes = request.getParameter("changes");
            String change_time = request.getParameter("change_time");

            String begin_id = request.getParameter("begin_id");
            Car car = new Car();
            car.setBegin_id(begin_id);
            if (change_time == null || change_time.isEmpty()) {
                // 如果没有提交 change_time，设置为 null
                car.setChange_time(null);
            } else {
                car.setChange_time(change_time);
            }
            car.setChanges(changes);
            car.setCjh(cjh);car.setCph(cph);car.setCx(cx);car.setCzrs(czrs);car.setPp(pp);
            car.setZzl(zzl);car.setXh(xh);
            CarPeople carpeople = new CarPeople();
            carpeople.setCph(cph);carpeople.setPhone(phone);
            // 创建会话s
            sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            CarPeople carpeoples = mapper.selectcarandpeople(cph);//判断车辆是否已经存在
            BatteryMapper mapper11 = sqlSession.getMapper(BatteryMapper.class);
            Battery battery = mapper11.selectbatterybyid(begin_id);//判断电池是否已经存在
            Car battery2 = mapper11.selectbatterybyid2(begin_id);//判断车辆原始电池
            System.out.println(battery);
            System.out.println(carpeoples);
            if (carpeoples==null&battery==null&battery2==null) {
                int i = mapper.addCar(car);
                int j = mapper.addCarPeople(carpeople);
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                if (i >= 1 && j >= 1) {
                    out.print("注册成功");
                    response.setHeader("refresh", "2;url=car_add.jsp");
                } else {
                    out.print("注册失败");
                    response.setHeader("refresh", "2;url=car_add.jsp");
                }
            }
            else {
                if (carpeoples!=null){
                    out.print("该车辆已存在");
                    response.setHeader("refresh", "2;url=car_add.jsp");
                }
                else {
                    out.print("该电池已存在");
                    response.setHeader("refresh", "2;url=car_add.jsp");
                }

            }
        }
        else if (method.equals("change")){
            String phone1 = request.getParameter("phone1");
            String phone2 = request.getParameter("phone2");
            String cph = request.getParameter("cph");

            CarPeople carpeople_delete = new CarPeople();
            carpeople_delete.setPhone(phone1);carpeople_delete.setCph(cph);
            CarPeople carpeople_add = new CarPeople();
            carpeople_add.setPhone(phone2);carpeople_add.setCph(cph);

            sqlSession = MyBatisUtil.createSqlSession();

            CarAreaMapper mapper11 = sqlSession.getMapper(CarAreaMapper.class);
            CarPeople carpeople = mapper11.FindCarByCPhAndPhone(phone1, cph);//用户是否存在该车辆
            CarMapper mapper22 = sqlSession.getMapper(CarMapper.class);
            Car car = mapper22.FindCarByphone(cph);//车辆是否已报废
            User02Mapper mapper33 =  sqlSession.getMapper(User02Mapper.class);
            User02 user = mapper33.FindPeopleByphone(phone1);//接受人是否存在
            if (carpeople!=null&car==null&user!=null) {

                CarMapper mapper = sqlSession.getMapper(CarMapper.class);
                int j = mapper.deleteCarPeople(carpeople_delete);
                int i = mapper.addCarPeople(carpeople_add);
                sqlSession.commit();
                MyBatisUtil.closeSqlSession(sqlSession);
                if (i >= 0 && j > 0) {
                    out.print("过户成功");
                    response.setHeader("refresh", "2;url=car_give.jsp");
                } else {
                    out.print("过户失败，请重新尝试");
                    response.setHeader("refresh", "2;url=car_give.jsp");
                }
            }
            else {
                    out.print("您没有这俩车，或车辆已报废，或接受人不存在");
                    response.setHeader("refresh", "2;url=car_give.jsp");

            }
        }
        else if (method.equals("baofei")){
            String phone = request.getParameter("phone");
            // 创建会话
            sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            List<CarPeople> carlist = mapper.carlist(phone);
            List<CarPeople> baofeilist = mapper.baofeilist(phone);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            request.setAttribute("carlist", carlist);
            request.setAttribute("baofeilist", baofeilist);
            request.getRequestDispatcher("car_baofei.jsp").forward(request, response);

        }
        else if (method.equals("baofei2")){
            String cph = request.getParameter("cph");
            String phone = request.getParameter("phone");
            sqlSession = MyBatisUtil.createSqlSession();
            CarMapper mapper = sqlSession.getMapper(CarMapper.class);
            int i = mapper.updateBaofei(cph);
            sqlSession.commit();
            MyBatisUtil.closeSqlSession(sqlSession);
            String encodedIdPhone = URLEncoder.encode(phone, "UTF-8");
            String encodedIdCph = URLEncoder.encode("baofei", "UTF-8");

// 输出链接，包含id_number和id_news参数
            out.print(cph+"已报废");
            out.print("<a href=\"car?method=" + encodedIdCph + "&phone=" + encodedIdPhone + "\">返回</a>");

        }
    }
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset =utf-8");
        doPost(request, response);
    }

}


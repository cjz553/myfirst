package team02.mapper;
import org.apache.ibatis.annotations.Param;
import team02.pojo.Car;
import team02.relation.AreaCar;
import team02.relation.AreaCar2;
import team02.relation.CarPeople;

import java.util.List;

public interface CarMapper {
    //查询全部车辆的车牌号
    List<CarPeople> carlist(String phone);
    //查询全部报废车辆的车牌号
    List<CarPeople> baofeilist(String phone);
    //重新某车辆的详细信息
    Car selectcar(String cph);
    //添加车辆
    int addCar(Car car);
    //车牌号，人记录表记录(添加)
    int addCarPeople(CarPeople carPeople);
    //车牌号，人记录表记录(删除)
    int deleteCarPeople(CarPeople carPeople);
    //修改报废状态
    int updateBaofei(String cph);
    Car FindCarByphone(String cph);
    CarPeople selectcarandpeople(String cph);

    List<AreaCar2> AdminCarStoplist();
    List<AreaCar2> AdminCarStoplistByKey(String search_input);

    List<AreaCar> AdminCarWtlist();
    List<AreaCar> AdminCarWtlistByKey(String search_input);

    List<Car> AdminCarlist();

    int AdminUpdatebaofei(@Param("cph") String cph, @Param("baofei") String baofei);

    List<Car> AdminCarlistByKey(String search_input);




}

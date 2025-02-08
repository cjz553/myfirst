package team02.mapper;

import org.apache.ibatis.annotations.Param;
import team02.pojo.CarArea;
import team02.relation.AreaCar;
import team02.relation.AreaCar2;
import team02.relation.CarPeople;

import java.util.List;

public interface CarAreaMapper {
    List<CarArea> CarAreaslist();
    List<CarArea> AdminCarAreaslist();
    int addAreaCar2(AreaCar2 ac2);
    int deleteAreaCar2(AreaCar2 ac2);
    int addAreaCar(AreaCar ac);
    int RemoveRemain(String car_area_id);
    int AddRemain(String car_area_id);
    int updateAreaCarTime(AreaCar ac);
    List<AreaCar2> AreaCarlistByPhone(String phone);
    List<AreaCar> SelectillegalReport(String phone);
    CarPeople FindCarByCPhAndPhone(@Param("phone") String phone, @Param("cph") String cph);
    AreaCar2 FindCarReportByCPhAndPhone(@Param("phone") String phone, @Param("cph") String cph);
    int UpdateSyzt(@Param("car_area_id") String car_area_id, @Param("syzt") String syzt);
    int AddPlace(CarArea place);
    List<CarArea> AdminSearchCarAreaslist(@Param("search_input") String search_input);



}

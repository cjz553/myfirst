package team02.mapper;

import org.apache.ibatis.annotations.Param;
import team02.pojo.Battery;
import team02.pojo.Car;
import team02.relation.CarBattery1;
import team02.relation.CarBattery2;
import team02.relation.PeopleBattery;

import java.util.List;

public interface BatteryMapper {
    Battery getBatteryByID(String battery_id);
    int addcar_battery1(@Param("cph") String cph, @Param("battery_id") String battery_id);
    int addcar_battery2(@Param("cph")String cph, @Param("battery_id")String battery_id, @Param("phone")String phone);
    int addpeople_battery(@Param("battery_id")String battery_id, @Param("phone")String phone,@Param("battery_fy")float battery_fy,@Param("battery_pay_zt")String battery_pay_zt);
    int deletebattery_cupboard(@Param("battery_id")String battery_id,@Param("cupboard_id")String cupboard_id);
    int deletecar_battery1(@Param("battery_id")String battery_id);
    int reporttimecar_battery2(@Param("battery_id")String battery_id);
    int updatebatterytime(@Param("battery_id")String battery_id);
    List<CarBattery2> SelectBatteryReport(@Param("phone")String phone);
    List<PeopleBattery> SelectBatteryFee(@Param("phone")String phone);
    int FeeFinsh( @Param("id") String id);
    int ReduceBalance (@Param("phone")String phone);
    Battery selectbatterybyid(@Param("battery_id")String battery_id);
    Car selectbatterybyid2(@Param("begin_id")String begin_id);

    List<Battery> AdminBatterylist(@Param("cupboard_id")String cupboard_id);

    int DeleteBatteryAndCupboardRelation(@Param("battery_id")String battery_id);
    int DeleteBattery(@Param("battery_id")String battery_id);
    List<Battery> AdminBatterylistByBatteryID(@Param("battery_id")String battery_id);

    int AddBatteryAndCupboardRelation(Battery battery);
    int AddBattery(Battery battery);

    int AdminDeleteCupboardCount(@Param("cupboard_id")String cupboard_id);
    int AdminAddCupboardCount(@Param("cupboard_id")String cupboard_id);

    List<CarBattery1> carbatterylist();
    List<CarBattery2> carbatterylist2();

    List<CarBattery1> carbatterylistbykey(@Param("search_input")String search_input);
    List<CarBattery2> carbatterylist2bykey(@Param("search_input")String search_input);

    Battery AdminBatteryID(@Param("battery_id")String battery_id);


}

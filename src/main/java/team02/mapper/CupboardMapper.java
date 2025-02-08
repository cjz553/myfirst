package team02.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import team02.pojo.Cupboard;
import team02.relation.BatteryCupboard;
import team02.relation.CarPeople;
import team02.relation.CupboardBatteryNumber;

import java.util.List;

// 数据库Mapper接口
public interface CupboardMapper {
    List<Cupboard> getAllCupboards();
    List<BatteryCupboard> getAllBatteryCupboard();
    List<BatteryCupboard> getBatteryCupboardByCupboard_id(String cupboard_id);
    List<CupboardBatteryNumber> getAllBatteryNumber();
    int reducecount(@Param("cupboard_id")String cupboard_id);
    int updatecupboardcount(@Param("cupboard_id")String cupboard_id);
    int addbattery_cupboard(@Param("cupboard_id")String cupboard_id, @Param("battery_id")String battery_id);
    Cupboard CupboardkjNumber(@Param("cupboard_id")String cupboard_id);
    CarPeople IfHaveBattery(@Param("phone")String phone,@Param("battery_id")String battery_id);
    List<Cupboard> AdminCupboardlist();
    int AddCupboard(Cupboard cupboard);
    List<Cupboard> AdminSearchCupboardlist(@Param("search_input")String search_input);
    int DeleteCupboard(@Param("cupboard_id")String cupboard_id);
    int DeleteCupboardAndBattery(@Param("cupboard_id")String cupboard_id);
    int DeleteCupboardAndBatteryRelation(@Param("cupboard_id")String cupboard_id);

    Cupboard getCupboardByID(@Param("cupboard_id")String cupboard_id);
}

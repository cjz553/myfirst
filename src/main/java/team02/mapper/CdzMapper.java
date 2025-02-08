package team02.mapper;

import org.apache.ibatis.annotations.Param;
import team02.pojo.Cdz;
import team02.relation.CarCdz;
import team02.relation.PeopleCdz;

import java.sql.Timestamp;
import java.util.List;

public interface CdzMapper {
    List<Cdz> Cdzlist(String car_area_id);
    int AddCarCdz(@Param("cdz_id") String cdz_id, @Param("cph") String cph, @Param("phone") String phone);
    int AddPeopleCdz(@Param("cdz_id") String cdz_id, @Param("phone") String phone);
    int UpdateCdzZt(@Param("cdz_id") String cdz_id);
    List<CarCdz> CarCdzReportlist(@Param("phone") String phone);

    int UpdateCarCdz(@Param("cdz_id") String cdz_id, @Param("cph") String cph);
    int UpdatePeopleCdz(@Param("cdz_id") String cdz_id, @Param("phone") String phone);
    int UpdateCdzZt2(@Param("cdz_id") String cdz_id);

    List<PeopleCdz> SelectCdzFee(@Param("phone") String phone);

    int ReduceBalance(@Param("phone") String phone,@Param("id") String id);
    int FeeFinsh(@Param("id") String id);

    CarCdz FindCarCdByCph(@Param("cph") String cph, @Param("phone") String phone);

    List<Cdz> AdminCdzlist();

    int DeleteCarArea(@Param("cdz_id") String cdz_id, @Param("car_area_id") String car_area_id);
    int DeleteCdzByID(@Param("cdz_id") String cdz_id);

    List<Cdz> AdminCdzlistKey(@Param("search_input") String search_input);
    Cdz getCdzByID(@Param("cdz_id") String cdz_id);

    int AddPlaceCdzRelation(Cdz c);
    int AddCdz(Cdz c);

    List<CarCdz> AdminCdzReport();

    List<CarCdz> AdminCdzReportByKey(@Param("search_input") String search_input);
}

package team02.pojo;

public class CarArea {
    private String car_area_id;
    private String car_area_name;
    private String begin_time;
    private String audit;
    private String certificate;
    private int remain;
    private String range_sw_lon;
    private String range_sw_lat;
    private String range_ne_lon;
    private String range_ne_lat;
    private String cdz_count;
    private String syzt;

    public String getCdz_count() {
        return cdz_count;
    }

    public void setCdz_count(String cdz_count) {
        this.cdz_count = cdz_count;
    }

    public String getRange_ne_lat() {
        return range_ne_lat;
    }

    public void setRange_ne_lat(String range_ne_lat) {
        this.range_ne_lat = range_ne_lat;
    }


    public String getCar_area_id() {
        return car_area_id;
    }

    public void setCar_area_id(String car_area_id) {
        this.car_area_id = car_area_id;
    }

    public String getCar_area_name() {
        return car_area_name;
    }

    public void setCar_area_name(String car_area_name) {
        this.car_area_name = car_area_name;
    }

    public String getBegin_time() {
        return begin_time;
    }

    public void setBegin_time(String begin_time) {
        this.begin_time = begin_time;
    }

    public String getAudit() {
        return audit;
    }

    public void setAudit(String audit) {
        this.audit = audit;
    }

    public String getCertificate() {
        return certificate;
    }

    public void setCertificate(String certificate) {
        this.certificate = certificate;
    }

    public int getRemain() {
        return remain;
    }

    public void setRemain(int remain) {
        this.remain = remain;
    }

    public String getRange_sw_lon() {
        return range_sw_lon;
    }

    public void setRange_sw_lon(String range_sw_lon) {
        this.range_sw_lon = range_sw_lon;
    }

    public String getRange_sw_lat() {
        return range_sw_lat;
    }

    public void setRange_sw_lat(String range_sw_lat) {
        this.range_sw_lat = range_sw_lat;
    }

    public String getRange_ne_lon() {
        return range_ne_lon;
    }

    public void setRange_ne_lon(String range_ne_lon) {
        this.range_ne_lon = range_ne_lon;
    }





    public String getSyzt() {
        return syzt;
    }

    public void setSyzt(String syzt) {
        this.syzt = syzt;
    }

    @Override
    public String toString() {
        return "CarArea{" +
                "car_area_id='" + car_area_id + '\'' +
                ", car_area_name='" + car_area_name + '\'' +
                ", begin_time='" + begin_time + '\'' +
                ", audit='" + audit + '\'' +
                ", certificate='" + certificate + '\'' +
                ", remain='" + remain + '\'' +
                ", range_sw_lon='" + range_sw_lon + '\'' +
                ", range_sw_lat='" + range_sw_lat + '\'' +
                ", range_ne_lon='" + range_ne_lon + '\'' +
                ", syzt='" + syzt + '\'' +
                '}';
    }
}

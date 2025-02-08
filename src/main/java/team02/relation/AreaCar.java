package team02.relation;

public class AreaCar {
    private String car_area_id;
    private String cph;
    private String wt;
    private String la;
    private String lo;
    private String begin_time;
    private String end_time;
    private String phone;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCar_area_id() {
        return car_area_id;
    }

    public void setCar_area_id(String car_area_id) {
        this.car_area_id = car_area_id;
    }

    public String getCph() {
        return cph;
    }

    public void setCph(String cph) {
        this.cph = cph;
    }

    public String getWt() {
        return wt;
    }

    public void setWt(String wt) {
        this.wt = wt;
    }

    public String getLa() {
        return la;
    }

    public void setLa(String la) {
        this.la = la;
    }

    public String getLo() {
        return lo;
    }

    public void setLo(String lo) {
        this.lo = lo;
    }

    public String getBegin_time() {
        return begin_time;
    }

    public void setBegin_time(String begin_time) {
        this.begin_time = begin_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    @Override
    public String toString() {
        return "AreaCar{" +
                "car_area_id='" + car_area_id + '\'' +
                ", cph='" + cph + '\'' +
                ", wt='" + wt + '\'' +
                ", la='" + la + '\'' +
                ", lo='" + lo + '\'' +
                ", begin_time='" + begin_time + '\'' +
                ", end_time='" + end_time + '\'' +
                '}';
    }
}

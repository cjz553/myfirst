package team02.relation;

public class AreaCar2 {
    private String car_area_id;
    private String cph;
    private String cf_time;
    private String la;
    private String lo;
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

    public String getCf_time() {
        return cf_time;
    }

    public void setCf_time(String cf_time) {
        this.cf_time = cf_time;
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

    @Override
    public String toString() {
        return "AreaCar2{" +
                "car_area_id='" + car_area_id + '\'' +
                ", cph='" + cph + '\'' +
                ", cf_time='" + cf_time + '\'' +
                ", la='" + la + '\'' +
                ", lo='" + lo + '\'' +
                '}';
    }
}

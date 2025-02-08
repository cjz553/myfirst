package team02.relation;

public class CarCdz {
    private String cdz_id;
    private String cph;
    private String begin_cd_time;
    private String end_cd_time;
    private String cd_times;
    private String phone;

    public String getCdz_id() {
        return cdz_id;
    }

    public void setCdz_id(String cdz_id) {
        this.cdz_id = cdz_id;
    }

    public String getCph() {
        return cph;
    }

    public void setCph(String cph) {
        this.cph = cph;
    }

    public String getBegin_cd_time() {
        return begin_cd_time;
    }

    public void setBegin_cd_time(String begin_cd_time) {
        this.begin_cd_time = begin_cd_time;
    }

    public String getEnd_cd_time() {
        return end_cd_time;
    }

    public void setEnd_cd_time(String end_cd_time) {
        this.end_cd_time = end_cd_time;
    }

    public String getCd_times() {
        return cd_times;
    }

    public void setCd_times(String cd_times) {
        this.cd_times = cd_times;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "CarCdz{" +
                "cdz_id='" + cdz_id + '\'' +
                ", cph='" + cph + '\'' +
                ", begin_cd_time='" + begin_cd_time + '\'' +
                ", end_cd_time='" + end_cd_time + '\'' +
                ", cd_times='" + cd_times + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}

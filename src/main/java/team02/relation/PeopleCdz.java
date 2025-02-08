package team02.relation;

public class PeopleCdz {
    private String cdz_id;
    private String phone;
    private String pay_cdz_time;
    private String cdz_fy;
    private String cdz_pay_zt;
    private String finish;
    private int id;

    public String getCdz_id() {
        return cdz_id;
    }

    public void setCdz_id(String cdz_id) {
        this.cdz_id = cdz_id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPay_cdz_time() {
        return pay_cdz_time;
    }

    public void setPay_cdz_time(String pay_cdz_time) {
        this.pay_cdz_time = pay_cdz_time;
    }

    public String getCdz_fy() {
        return cdz_fy;
    }

    public void setCdz_fy(String cdz_fy) {
        this.cdz_fy = cdz_fy;
    }

    public String getCdz_pay_zt() {
        return cdz_pay_zt;
    }

    public void setCdz_pay_zt(String cdz_pay_zt) {
        this.cdz_pay_zt = cdz_pay_zt;
    }

    public String getFinish() {
        return finish;
    }

    public void setFinish(String finish) {
        this.finish = finish;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "PeopleCdz{" +
                "cdz_id='" + cdz_id + '\'' +
                ", phone='" + phone + '\'' +
                ", pay_cdz_time='" + pay_cdz_time + '\'' +
                ", cdz_fy='" + cdz_fy + '\'' +
                ", cdz_pay_zt='" + cdz_pay_zt + '\'' +
                ", finish='" + finish + '\'' +
                ", id=" + id +
                '}';
    }
}

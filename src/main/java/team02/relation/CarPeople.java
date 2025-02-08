package team02.relation;

public class CarPeople {
    private String phone;
    private String cph;
    private String begin_have_time;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCph() {
        return cph;
    }

    public void setCph(String cph) {
        this.cph = cph;
    }

    public String getBegin_have_time() {
        return begin_have_time;
    }

    public void setBegin_have_time(String begin_have_time) {
        this.begin_have_time = begin_have_time;
    }

    @Override
    public String toString() {
        return "CarPeople{" +
                "phone='" + phone + '\'' +
                ", cph='" + cph + '\'' +
                ", begin_have_time='" + begin_have_time + '\'' +
                '}';
    }
}

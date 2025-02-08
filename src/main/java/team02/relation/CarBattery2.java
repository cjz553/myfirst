package team02.relation;

public class CarBattery2 {
    private String cph;
    private String battery_id;
    private String change_time;
    private String back_time;
    private String phone;

    public String getCph() {
        return cph;
    }

    public void setCph(String cph) {
        this.cph = cph;
    }

    public String getBattery_id() {
        return battery_id;
    }

    public void setBattery_id(String battery_id) {
        this.battery_id = battery_id;
    }

    public String getChange_time() {
        return change_time;
    }

    public void setChange_time(String change_time) {
        this.change_time = change_time;
    }

    public String getBack_time() {
        return back_time;
    }

    public void setBack_time(String back_time) {
        this.back_time = back_time;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "CarBattery2{" +
                "cph='" + cph + '\'' +
                ", battery_id='" + battery_id + '\'' +
                ", change_time='" + change_time + '\'' +
                ", back_time='" + back_time + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}

package team02.relation;

public class PeopleBattery {
    private String battery_id;
    private String phone;
    private String pay_battery_time;
    private String battery_fy;
    private String battery_pay_zt;
    private String finish;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBattery_id() {
        return battery_id;
    }

    public void setBattery_id(String battery_id) {
        this.battery_id = battery_id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPay_battery_time() {
        return pay_battery_time;
    }

    public void setPay_battery_time(String pay_battery_time) {
        this.pay_battery_time = pay_battery_time;
    }

    public String getBattery_fy() {
        return battery_fy;
    }

    public void setBattery_fy(String battery_fy) {
        this.battery_fy = battery_fy;
    }

    public String getBattery_pay_zt() {
        return battery_pay_zt;
    }

    public void setBattery_pay_zt(String battery_pay_zt) {
        this.battery_pay_zt = battery_pay_zt;
    }

    public String getFinish() {
        return finish;
    }

    public void setFinish(String finish) {
        this.finish = finish;
    }

    @Override
    public String toString() {
        return "PeopleBattery{" +
                "battery_id='" + battery_id + '\'' +
                ", phone='" + phone + '\'' +
                ", pay_battery_time='" + pay_battery_time + '\'' +
                ", battery_fy='" + battery_fy + '\'' +
                ", battery_pay_zt='" + battery_pay_zt + '\'' +
                ", finish='" + finish + '\'' +
                '}';
    }
}

package team02.relation;

public class CarBattery1 {
    private String cph;
    private String battery_id;
    private String carry_begin_time;

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

    public String getCarry_begin_time() {
        return carry_begin_time;
    }

    public void setCarry_begin_time(String carry_begin_time) {
        this.carry_begin_time = carry_begin_time;
    }

    @Override
    public String toString() {
        return "CarBattery1{" +
                "cph='" + cph + '\'' +
                ", battery_id='" + battery_id + '\'' +
                ", carry_begin_time='" + carry_begin_time + '\'' +
                '}';
    }
}

package team02.pojo;

public class Battery {
    private String battery_id;
    private String battery_model;
    private String battery_pp;
    private String battery_capacity;
    private String battery_s;
    private String safety;
    private String battery_registration;
    private String last_repair_battery;
    private String last_time;
    private String repair_frequency;
    private String cupboard_id;

    public String getCupboard_id() {
        return cupboard_id;
    }

    public void setCupboard_id(String cupboard_id) {
        this.cupboard_id = cupboard_id;
    }

    public String getBattery_id() {
        return battery_id;
    }

    public void setBattery_id(String battery_id) {
        this.battery_id = battery_id;
    }

    public String getBattery_model() {
        return battery_model;
    }

    public void setBattery_model(String battery_model) {
        this.battery_model = battery_model;
    }

    public String getBattery_pp() {
        return battery_pp;
    }

    public void setBattery_pp(String battery_pp) {
        this.battery_pp = battery_pp;
    }

    public String getBattery_capacity() {
        return battery_capacity;
    }

    public void setBattery_capacity(String battery_capacity) {
        this.battery_capacity = battery_capacity;
    }

    public String getBattery_s() {
        return battery_s;
    }

    public void setBattery_s(String battery_s) {
        this.battery_s = battery_s;
    }

    public String getSafety() {
        return safety;
    }

    public void setSafety(String safety) {
        this.safety = safety;
    }

    public String getBattery_registration() {
        return battery_registration;
    }

    public void setBattery_registration(String battery_registration) {
        this.battery_registration = battery_registration;
    }

    public String getLast_repair_battery() {
        return last_repair_battery;
    }

    public void setLast_repair_battery(String last_repair_battery) {
        this.last_repair_battery = last_repair_battery;
    }

    public String getLast_time() {
        return last_time;
    }

    public void setLast_time(String last_time) {
        this.last_time = last_time;
    }

    public String getRepair_frequency() {
        return repair_frequency;
    }

    public void setRepair_frequency(String repair_frequency) {
        this.repair_frequency = repair_frequency;
    }

    @Override
    public String toString() {
        return "Battery{" +
                "battery_id='" + battery_id + '\'' +
                ", battery_model='" + battery_model + '\'' +
                ", battery_pp='" + battery_pp + '\'' +
                ", battery_capacity='" + battery_capacity + '\'' +
                ", battery_s='" + battery_s + '\'' +
                ", safety='" + safety + '\'' +
                ", battery_registration='" + battery_registration + '\'' +
                ", last_repair_battery='" + last_repair_battery + '\'' +
                ", last_time='" + last_time + '\'' +
                ", repair_frequency='" + repair_frequency + '\'' +
                '}';
    }
}

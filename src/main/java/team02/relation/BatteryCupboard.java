package team02.relation;

public class BatteryCupboard {
    private String cupboard_id;
    private String battery_id;

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

    @Override
    public String toString() {
        return "BatteryCupboard{" +
                "cupboard_id='" + cupboard_id + '\'' +
                ", battery_id='" + battery_id + '\'' +
                '}';
    }
}

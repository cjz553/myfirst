package team02.pojo;

public class Cdz {
    private String cdz_id;
    private String rate;
    private String last_repair_pile;
    private String pile_repair_frequency;
    private String pile_registration;
    private String zt;
    private String car_area_id;

    public String getCar_area_id() {
        return car_area_id;
    }

    public void setCar_area_id(String car_area_id) {
        this.car_area_id = car_area_id;
    }

    public String getCdz_id() {
        return cdz_id;
    }

    public void setCdz_id(String cdz_id) {
        this.cdz_id = cdz_id;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public String getLast_repair_pile() {
        return last_repair_pile;
    }

    public void setLast_repair_pile(String last_repair_pile) {
        this.last_repair_pile = last_repair_pile;
    }

    public String getPile_repair_frequency() {
        return pile_repair_frequency;
    }

    public void setPile_repair_frequency(String pile_repair_frequency) {
        this.pile_repair_frequency = pile_repair_frequency;
    }

    public String getPile_registration() {
        return pile_registration;
    }

    public void setPile_registration(String pile_registration) {
        this.pile_registration = pile_registration;
    }

    public String getZt() {
        return zt;
    }

    public void setZt(String zt) {
        this.zt = zt;
    }

    @Override
    public String toString() {
        return "Cdz{" +
                "cdz_id='" + cdz_id + '\'' +
                ", rate='" + rate + '\'' +
                ", last_repair_pile='" + last_repair_pile + '\'' +
                ", pile_repair_frequency='" + pile_repair_frequency + '\'' +
                ", pile_registration='" + pile_registration + '\'' +
                ", zt='" + zt + '\'' +
                '}';
    }
}

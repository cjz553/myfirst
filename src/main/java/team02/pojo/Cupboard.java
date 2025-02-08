package team02.pojo;

public class Cupboard {
    private String cupboard_id;
    private String cupboard_frequency;
    private String last_repair_cupboard;
    private String cupboard_registration;
    private int cupboard_hold;
    private String lo;
    private String la;
    private int count;//电池数量

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getCupboard_id() {
        return cupboard_id;
    }

    public void setCupboard_id(String cupboard_id) {
        this.cupboard_id = cupboard_id;
    }

    public String getCupboard_frequency() {
        return cupboard_frequency;
    }

    public void setCupboard_frequency(String cupboard_frequency) {
        this.cupboard_frequency = cupboard_frequency;
    }

    public String getLast_repair_cupboard() {
        return last_repair_cupboard;
    }

    public void setLast_repair_cupboard(String last_repair_cupboard) {
        this.last_repair_cupboard = last_repair_cupboard;
    }

    public String getCupboard_registration() {
        return cupboard_registration;
    }

    public void setCupboard_registration(String cupboard_registration) {
        this.cupboard_registration = cupboard_registration;
    }

    public int getCupboard_hold() {
        return cupboard_hold;
    }

    public void setCupboard_hold(int cupboard_hold) {
        this.cupboard_hold = cupboard_hold;
    }

    public String getLo() {
        return lo;
    }

    public void setLo(String lo) {
        this.lo = lo;
    }

    public String getLa() {
        return la;
    }

    public void setLa(String la) {
        this.la = la;
    }

    @Override
    public String toString() {
        return "Cupboard{" +
                "cupboard_id='" + cupboard_id + '\'' +
                ", cupboard_frequency='" + cupboard_frequency + '\'' +
                ", last_repair_cupboard='" + last_repair_cupboard + '\'' +
                ", cupboard_registration='" + cupboard_registration + '\'' +
                ", cupboard_hold='" + cupboard_hold + '\'' +
                ", lo='" + lo + '\'' +
                ", la='" + la + '\'' +
                '}';
    }
}

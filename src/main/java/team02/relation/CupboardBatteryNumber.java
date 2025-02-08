package team02.relation;

public class CupboardBatteryNumber {
    private String cupboard_id;
    private int count;

    public String getCupboard_id() {
        return cupboard_id;
    }

    public void setCupboard_id(String cupboard_id) {
        this.cupboard_id = cupboard_id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "CupboardBatteryNumber{" +
                "cupboard_id='" + cupboard_id + '\'' +
                ", count=" + count +
                '}';
    }
}

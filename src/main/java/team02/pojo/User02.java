package team02.pojo;

public class User02 {
    private String id;
    private String phone;
    private String name;
    private String people_registration;
    private String student_id;
    private String grade;
    private String profession;
    private String school;
    private String accounts;
    private String password;
    private String role;
    private String zt;

    public String getZt() {
        return zt;
    }

    public void setZt(String zt) {
        this.zt = zt;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPeople_registration() {
        return people_registration;
    }

    public void setPeople_registration(String people_registration) {
        this.people_registration = people_registration;
    }

    public String getStudent_id() {
        return student_id;
    }

    public void setStudent_id(String student_id) {
        this.student_id = student_id;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getAccounts() {
        return accounts;
    }

    public void setAccounts(String accounts) {
        this.accounts = accounts;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User02{" +
                "id='" + id + '\'' +
                ", phone='" + phone + '\'' +
                ", name='" + name + '\'' +
                ", people_registration='" + people_registration + '\'' +
                ", student_id='" + student_id + '\'' +
                ", grade='" + grade + '\'' +
                ", profession='" + profession + '\'' +
                ", school='" + school + '\'' +
                ", accounts='" + accounts + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}

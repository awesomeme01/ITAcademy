package Models;

public class Application {
    String fio;
    String course;
    String email;
    boolean isOnline;
    String gender;
    String birthdate;
    String selfstory;

    public Application(String fio, String course, String email, boolean isOnline, String gender, String birthdate, String selfstory) {
        this.fio = fio;
        this.course = course;
        this.email = email;
        this.isOnline = isOnline;
        this.gender = gender;
        this.birthdate = birthdate;
        this.selfstory = selfstory;
    }

    public String getGender() {
        return gender;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public String getSelfstory() {
        return selfstory;
    }

    public String getFio() {
        return fio;
    }

    public String getCourse() {
        return course;
    }

    public String getEmail() {
        return email;
    }

    @Override
    public String toString() {
        return "Application{" +
                "fio='" + fio + '\'' +
                ", course='" + course + '\'' +
                ", email='" + email + '\'' +
                ", isOnline=" + isOnline +
                ", gender='" + gender + '\'' +
                ", birthdate='" + birthdate + '\'' +
                ", selfstory='" + selfstory + '\'' +
                '}';
    }

    public boolean isOnline() {
        return isOnline;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setOnline(boolean online) {
        isOnline = online;
    }
}

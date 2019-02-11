package Db;

import Models.Application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class DataBaseConnector {
//    public static ArrayList<Application> applications = new ArrayList<>();
//    public static boolean addApplication(Application application){
//
//        applications.add(application);
//        return true;
//    }
    public final String url = "jdbc:postgresql://localhost:5432/postgres";
    public final String user = "postgres";
    public final String password = "1267476";

    public Connection connect() {
        Connection conn = null;
        try{
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Successfully connected to the Database");
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }
    public boolean addApplication(Application app){
        DataBaseConnector db = new DataBaseConnector();
        String SQL = "insert into applications(fio, course, mail, birthdate, gender, selfstory, isOnline) values(?,?,?,?,?,?,?)";
        try(Connection conn = db.connect();
            PreparedStatement stmt = conn.prepareStatement(SQL)
                ){
            stmt.setString(1, app.getFio());
            stmt.setString(2, app.getCourse());
            stmt.setString(3, app.getEmail());
            stmt.setString(4, app.getBirthdate());
            stmt.setString(5, app.getGender());
            stmt.setString(6, app.getSelfstory());
            stmt.setBoolean(7, app.isOnline());
            stmt.executeUpdate();
            return true;
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
            return false;
        }
    }

}

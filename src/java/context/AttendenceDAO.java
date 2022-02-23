/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendence;
import model.Schedule;
import model.Student;

/**
 *
 * @author Admin
 */
public class AttendenceDAO extends DBContext {

    public void insertAttendence(Attendence x) {
        String sql = "insert into Attendence (ScheduleID, [StudentCode], Attendence) values (?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, x.getSchedule().getScheduleID());
            statement.setString(2, x.getStudent().getStudentCode());
            statement.setString(3, x.getAttendence());
            int result = statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AttendenceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateAttendence(Attendence x) {
        String sql = "update Attendence\n"
                + "set Attendence = ?\n"
                + "where [StudentCode] = ? and ScheduleID = ?";
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, x.getAttendence());
            statement.setString(2, x.getStudent().getStudentCode());
            statement.setInt(3, x.getSchedule().getScheduleID());
            int result = statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AttendenceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Attendence> getAttendenceByScheduleID(int scheduleID) {
        ArrayList<Attendence> listAttendence = new ArrayList<>();
        String sql = "select a.*, st.FullName, st.Image\n"
                + "from Attendence a join Student st on a.[StudentCode] = st.StudentCode\n"
                + "where a.ScheduleID  = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, scheduleID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Attendence x = new Attendence();
                x.setAttendenceID(rs.getInt("ID"));
                Schedule schedule = new Schedule();
                schedule.setScheduleID(rs.getInt("ScheduleID"));
                x.setSchedule(schedule);
                Student student = new Student();
                student.setStudentCode(rs.getString("StudentCode"));
                student.setFullName(rs.getString("FullName"));
                student.setImage(rs.getString("Image"));
                x.setStudent(student);
                x.setAttendence(rs.getString("Attendence"));
                listAttendence.add(x);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendenceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listAttendence;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Classroom;
import model.Schedule;
import model.Slot;
import model.Subject;


public class ScheduleDAO extends DBContext {

    public ArrayList<Date> getDateIn48Hours() {
        String sql = "select distinct [Date]\n"
                + "from Schedule\n"
                + "where [Date] >= DATEADD(day, -2, convert(date, GETDATE()))\n"
                + "   and [Date] <= convert(date, GETDATE()) ORDER BY [Date] DESC";
        ArrayList<Date> listDate = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                listDate.add(rs.getDate("Date"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listDate;
    }

    public ArrayList<Schedule> getScheduleByChoosenDate(String date) {
        ArrayList<Schedule> listSchedules = new ArrayList<>();
        String sql = "select *, sub.SubjectName, c.ClassName, sl.SlotName, sl.[Time]\n"
                + "from ((Schedule s join [Subject] sub on s.SubjectID = sub.SubjectID) join Class c on s.ClassID = c.ClassID ) join Slot sl on s.SlotID = sl.SlotID\n"
                + "where [Date] = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, date);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Schedule x = new Schedule();
                x.setScheduleID(rs.getInt("ID"));
                Subject subject = new Subject();
                subject.setSubjectID(rs.getInt("SubjectID"));
                subject.setSubjectName(rs.getString("SubjectName"));
                x.setSubject(subject);
                Classroom classroom = new Classroom();
                classroom.setClassroomID(rs.getInt("ClassID"));
                classroom.setClassroomName(rs.getString("ClassName"));
                x.setClassName(classroom);
                Slot slot = new Slot();
                slot.setSlotID(rs.getInt("SlotID"));
                slot.setSlotName(rs.getString("SlotName"));
                slot.setTime(rs.getString("Time"));
                x.setSlot(slot);
                x.setDate(rs.getDate("Date"));
                listSchedules.add(x);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listSchedules;
    }
    public Schedule getScheduleByID(int scheduleID) {
        String sql = "select *, sub.SubjectName, c.ClassName, sl.SlotName, sl.[Time]\n"
                + "from ((Schedule s join [Subject] sub on s.SubjectID = sub.SubjectID) join Class c on s.ClassID = c.ClassID ) join Slot sl on s.SlotID = sl.SlotID\n"
                + "where ID = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, scheduleID);
            ResultSet rs = statement.executeQuery();
            
            while (rs.next()) {
                Schedule x = new Schedule();
                x.setScheduleID(rs.getInt("ID"));
                Subject subject = new Subject();
                subject.setSubjectID(rs.getInt("SubjectID"));
                subject.setSubjectName(rs.getString("SubjectName"));
                x.setSubject(subject);
                Classroom classroom = new Classroom();
                classroom.setClassroomID(rs.getInt("ClassID"));
                classroom.setClassroomName(rs.getString("ClassName"));
                x.setClassName(classroom);
                Slot slot = new Slot();
                slot.setSlotID(rs.getInt("SlotID"));
                slot.setSlotName(rs.getString("SlotName"));
                slot.setTime(rs.getString("Time"));
                x.setSlot(slot);
                x.setDate(rs.getDate("Date"));
                return x;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ScheduleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}

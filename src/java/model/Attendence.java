/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Admin
 */
public class Attendence {
    private int AttendenceID;
    private Schedule schedule;
    private Student student;
    private String attendence;

    public Attendence() {
    }

    public int getAttendenceID() {
        return AttendenceID;
    }

    public void setAttendenceID(int AttendenceID) {
        this.AttendenceID = AttendenceID;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getAttendence() {
        return attendence;
    }

    public void setAttendence(String attendence) {
        this.attendence = attendence;
    }
    
}

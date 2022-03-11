/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

public class Schedule {
    private int ScheduleID;
    private Subject subject;
    private Classroom className;
    private Slot slot;
    private Date date;

    public Schedule() {
    }

    
    public int getScheduleID() {
        return ScheduleID;
    }

    public void setScheduleID(int ScheduleID) {
        this.ScheduleID = ScheduleID;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public Classroom getClassName() {
        return className;
    }

    public void setClassName(Classroom className) {
        this.className = className;
    }

    public Slot getSlot() {
        return slot;
    }

    public void setSlot(Slot slot) {
        this.slot = slot;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
}

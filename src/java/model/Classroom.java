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
public class Classroom {
    private int ClassroomID;
    private String ClassroomName;

    public Classroom() {
    }

    public int getClassroomID() {
        return ClassroomID;
    }

    public void setClassroomID(int ClassroomID) {
        this.ClassroomID = ClassroomID;
    }

    public String getClassroomName() {
        return ClassroomName;
    }

    public void setClassroomName(String ClassroomName) {
        this.ClassroomName = ClassroomName;
    }
    
}

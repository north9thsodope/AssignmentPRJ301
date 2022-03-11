/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class Student {
    private String StudentCode;
    private String FullName;
    private String Image;

    public Student() {
    }

    public String getStudentCode() {
        return StudentCode;
    }

    public void setStudentCode(String StudentCode) {
        this.StudentCode = StudentCode;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getImage() {
        return Image;
    }
    
    public void setImage(String Image) {
        this.Image = Image;
    }
    
}

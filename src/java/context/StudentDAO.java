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
import model.Student;


public class StudentDAO extends DBContext {

    public ArrayList<Student> getStudentsFromClass(int classID) {
        String sql = "select s.*\n"
                + "from Student s join ClassMember cm on s.StudentCode =  cm.StudentCode\n"
                + "where cm.ClassID = ?";
        ArrayList<Student> listStudent = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, classID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Student x = new Student();
                x.setStudentCode(rs.getString("StudentCode"));
                x.setFullName(rs.getString("FullName"));
                x.setImage(rs.getString("Image"));
                listStudent.add(x);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listStudent;
    }

    public Student getStudentByStudentCode(String studentCode) {
        String sql = "select *\n"
                + "from Student\n"
                + "where StudentCode = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, studentCode);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Student x = new Student();
                x.setStudentCode(rs.getString("StudentCode"));
                x.setFullName(rs.getString("FullName"));
                x.setImage(rs.getString("Image"));
                return x;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import context.AttendenceDAO;
import context.ScheduleDAO;
import context.StudentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Attendence;
import model.Schedule;
import model.Student;


@WebServlet(name = "AttendController", urlPatterns = {"/list/attendence"})
public class AttendController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AttendController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AttendController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet_Check(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String scheduleID = request.getParameter("schedule");
        ScheduleDAO scheduleDb = new ScheduleDAO();
        Schedule schedule = scheduleDb.getScheduleByID(Integer.parseInt(scheduleID));
        String information = schedule.getClassName().getClassroomName() + " - " + schedule.getSlot().getSlotName() + " - " + schedule.getSubject().getSubjectName() + " - " + schedule.getDate();
        request.setAttribute("information", information);
        StudentDAO studentDb = new StudentDAO();
        ArrayList<Student> listStudent = studentDb.getStudentsFromClass(schedule.getClassName().getClassroomID());
        request.setAttribute("listStudent", listStudent);
        request.getRequestDispatcher("../List.jsp").forward(request, response);
    }

    protected void doGet_Edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String schedule = request.getParameter("schedule");
        int scheduleID = Integer.parseInt(schedule);
        ScheduleDAO scheduleDb = new ScheduleDAO();
        Schedule scheduleGetFromDb = scheduleDb.getScheduleByID(scheduleID);
        String information = scheduleGetFromDb.getClassName().getClassroomName() + " - " + scheduleGetFromDb.getSlot().getSlotName() + " - " + scheduleGetFromDb.getSubject().getSubjectName() + " - " + scheduleGetFromDb.getDate();
        request.setAttribute("information", information);
        StudentDAO studentDb = new StudentDAO();
        ArrayList<Student> listStudent = studentDb.getStudentsFromClass(scheduleGetFromDb.getClassName().getClassroomID());
        AttendenceDAO aDb = new AttendenceDAO();
        ArrayList<Attendence> listAttendence = aDb.getAttendenceByScheduleID(scheduleID);
        request.setAttribute("listAttendence", listAttendence);
        request.setAttribute("listStudent", listStudent);
        request.getRequestDispatcher("../List.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("status").equals("check")) {
            doGet_Check(request, response);
            return;
        }
        if (request.getParameter("status").equals("edit")) {
            doGet_Edit(request, response);
            return;
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost_Insert(HttpServletRequest request, HttpServletResponse response, String scheduleID)
            throws ServletException, IOException {
        /*
        String scheduleID = request.getParameter("schedule");
        ScheduleDAO scheduleDb = new ScheduleDAO();
        Schedule schedule = scheduleDb.getScheduleByID(Integer.parseInt(scheduleID));
        String information = schedule.getClassName().getClassroomName() + " - " + schedule.getSlot().getSlotName() + " - " + schedule.getSubject().getSubjectName() + " - " + schedule.getDate();
        request.setAttribute("information", information);
        StudentDAO studentDb = new StudentDAO();
        ArrayList<Student> listStudent = studentDb.getStudentsFromClass(schedule.getClassName().getClassroomID());
        request.setAttribute("listStudent", listStudent);
        request.getRequestDispatcher("../List.jsp").forward(request, response);
        */
        
        String[] studentCode = request.getParameterValues("student");
        Schedule schedule = new Schedule();
        schedule.setScheduleID(Integer.parseInt(scheduleID));
        String[] attendence = request.getParameterValues("attendence");
        Student[] students = new Student[studentCode.length];
        for (int i = 0; i < students.length; i++) {
            students[i] = new Student();
            students[i].setStudentCode(studentCode[i]);
        }
        AttendenceDAO aDb = new AttendenceDAO();
        Attendence[] attendences = new Attendence[attendence.length];
        for (int i = 0; i < attendences.length; i++) {
            attendences[i] = new Attendence();
            attendences[i].setSchedule(schedule);
            attendences[i].setStudent(students[i]);
            attendences[i].setAttendence(attendence[i]);
            aDb.insertAttendence(attendences[i]);
        }
        HttpSession session = request.getSession(false);
        session.setAttribute("notification", "Check successful");
        response.sendRedirect(request.getContextPath());
    }

    protected void doPost_Update(HttpServletRequest request, HttpServletResponse response, String scheduleID)
            throws ServletException, IOException {
        
        String[] studentCode = request.getParameterValues("student");
        Schedule schedule = new Schedule();
        schedule.setScheduleID(Integer.parseInt(scheduleID));
        String[] attendence = request.getParameterValues("attendence");
        Student[] students = new Student[studentCode.length];
        for (int i = 0; i < students.length; i++) {
            students[i] = new Student();
            students[i].setStudentCode(studentCode[i]);
        }
        AttendenceDAO aDb = new AttendenceDAO();
        Attendence[] attendences = new Attendence[attendence.length];
        for (int i = 0; i < attendences.length; i++) {
            attendences[i] = new Attendence();
            attendences[i].setSchedule(schedule);
            attendences[i].setStudent(students[i]);
            attendences[i].setAttendence(attendence[i]);
            aDb.updateAttendence(attendences[i]);
        }
        HttpSession session = request.getSession(false);
        session.setAttribute("notification", "Update successful");
        response.sendRedirect(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String param = request.getParameter("param");
        String[] splitParam = param.split("&");
        String scheduleID = splitParam[0].substring(splitParam[0].indexOf("=") + 1);
        String status = splitParam[1].substring(splitParam[1].indexOf("=") + 1);
        if (status.equals("check")) {
            doPost_Insert(request, response, scheduleID);
            return;
        }
        if (status.equals("edit")) {
            doPost_Update(request, response, scheduleID);
            return;
        }

    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

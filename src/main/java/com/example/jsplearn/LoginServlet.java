package com.example.jsplearn;



import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 这里简化了登录验证逻辑，实际应用中需要进行更完善的验证
    private boolean validateUser(String id, String name, String password) {
        return true; // 假设所有用户都是合法用户
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentID = request.getParameter("studentID");
        String studentName = request.getParameter("studentName");
        String password = request.getParameter("password");


        if (validateUser(studentID, studentName, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("studentID", studentID);
            session.setAttribute("studentName", studentName);
            response.sendRedirect("Testing/exam.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
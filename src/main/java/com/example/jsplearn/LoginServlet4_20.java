package com.example.jsplearn;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class RegistServlet
 */
@WebServlet(value="/LoginServlet")
public class LoginServlet4_20 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet4_20() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset = UTF-8");
		PrintWriter out = response.getWriter();
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String username=request.getParameter("user");
		String pwd=request.getParameter("pwd");
		if(!username.equals("zyy")||!pwd.equals("123")) {
			if(!username.equals("zyy")) {
				out.print("用户名错误<br>");
				
			}
			if(!pwd.equals("123")) {
				out.print("密码错误<br>");out.print("<a href=\"login.html\">返回登录界面</a>");
			}
			out.print("<a href=\"login.html\">返回登录界面</a>");
			
		}
		else {
			out.print("登录成功");
		}
		 out.println("<body><html>");
	}

}
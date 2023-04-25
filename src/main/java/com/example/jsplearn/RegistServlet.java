
package com.example.jsplearn;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegistServlet",urlPatterns = {"/RegistServlet"})
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset = UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		String sex = request.getParameter("sex");
		String address = request.getParameter("address");
		String hobby[] = request.getParameterValues("hobby");
		String info = request.getParameter("info");	
				    out.println("姓名："+username+"<br>");
				    out.println("性别："+sex+"<br>");
				    out.println("籍贯："+address+"<br>");
				    out.print(password);
				    out.println("爱好：");
				    int i=0;
				    	while(hobby[i]!=null) {
				    		out.println(hobby[i++]+" ");
				    	}
				    out.println("<br>");
				    out.println("介绍："+info);
	    out.println("<body><html>");
	}
}


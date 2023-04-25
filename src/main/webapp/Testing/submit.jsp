<%--
  Created by IntelliJ IDEA.
  User: tsukisome
  Date: 2023/4/16
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.example.jsplearn.student" %>
<!DOCTYPE html>
<html>
<head>
  <title>统计得分</title>
</head>
<body>

<%!
  // 定义答案数组
  String[] answers = {"A", "B", "ABCD", "ABCD", "F","TCP主要提供了检验和、序列号/确认应答、超时重传、最大消息长度、滑动窗口控制等方法实现了可靠性传输。", "反射机制是指在程序运行时，通过代码获取程序中的类型信息、成员变量和方法，并对它们进行操作的一种机制。"};

  // 定义分数数组
  int[] scores = {10, 10, 10, 10, 10, 30};
%>
<%
  // 获取表单提交的数据
  String studentId = session.getAttribute("studentID").toString();
  String studentName = session.getAttribute("studentName").toString();
  String password = (String) session.getAttribute("password");
  String[] q1 = request.getParameterValues("q1");
  String[] q2 = request.getParameterValues("q2");
  String[] q3 = request.getParameterValues("q3");
  String[] q4 = request.getParameterValues("q4");
  String q5 = request.getParameter("q5");
  String q6 = request.getParameter("q6");
  String q7 = request.getParameter("q7");
  List<String> record=new ArrayList<>();
  record.add(Arrays.toString(q1));
  record.add(Arrays.toString(q2));
  record.add(Arrays.toString(q3));
  record.add(Arrays.toString(q4));
  record.add(q5);
  record.add(q6);
  record.add(q7);


  // 计算分数
  int totalScore = 0;
  boolean[] correctAnswers = new boolean[7];

  for (String s : q1) {
    if (s.equals(answers[0])) {
      totalScore += scores[0];
      correctAnswers[0] = true;
      break;
    }
  }

  for (String s : q2) {
    if (s.equals(answers[1])) {
      totalScore += scores[1];
      correctAnswers[1] = true;
      break;
    }
  }
  String q3Add = "";
  if(q3!=null)
    {
      for (String s : q3) {

        q3Add += s;
        if (q3Add.equals(answers[2])) {
          totalScore += scores[2];
          correctAnswers[2] = true;
          break;
        }
      }
    }
  System.out.println(q3Add);
  String q4Add = "";
  if(q4!=null)
    {
      for (String s : q4) {

        q4Add += s;
        if (q4Add.equals(answers[2])) {
          totalScore += scores[2];
          correctAnswers[2] = true;
          break;
        }
      }
      System.out.println(q4Add);
      if (q5 != null && q5.equals(answers[4])) {
        totalScore += scores[4];
        correctAnswers[4] = true;
      }
    }

  if (q6 != null && q6.equals(answers[5])) {
    totalScore += scores[5];
    correctAnswers[5] = true;
  }
  if (q7 != null && q7.equals(answers[6])) {
    totalScore += scores[5];
    correctAnswers[6] = true;
  }

  // 保存成绩
  student thisstudent =new student();
  thisstudent.setId(studentId);
  thisstudent.setName(studentName);
  thisstudent.setScore(totalScore);
  List<student> students = (List<student>) application.getAttribute("students");
  if(students==null) {
    students = new ArrayList<student>();
  }
  else{}
  if (!students.contains(thisstudent)) {
    students.add(thisstudent);
  }
  application.setAttribute("thisstudent",thisstudent);
  application.setAttribute("students",students);
%>

<h1>统计得分</h1>
<p>学号：<%= studentId %></p>
<p>姓名：<%= studentName %></p>
<p>分数：<%= totalScore %></p>
<p>答题情况：</p>
<%
  int asd=123;
  application.setAttribute("asd",asd);
  int i=1;
  for (String s:answers)
  {

    out.println("<h3>第"+(i)+"题答案为:"+s+"</h3><br>");

    out.println("你"+(!record.get(i - 1).equals("null") ?"的答案为"+record.get(i-1)+"<br>":"未作答！"));

      out.println((correctAnswers[i-1]?"你答对了":(!record.get(i - 1).equals("null") ?"你答错了":" ")) +"<br>");//差点就正不会，不如用if
      i+=1;

  }
%>

<form method="post" action="rank.jsp">
  <input type="submit" value="查看排名">
</form>
</body>
</html>
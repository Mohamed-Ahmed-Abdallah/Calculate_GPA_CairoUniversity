<%-- 
    Document   : calculate
    Created on : Apr 10, 2022, 5:54:04 AM
    Author     : Mohamed
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GPA Calculator</title>
        <link rel="stylesheet" href="CSS/style.css">
        <style>
            body{
                height: 95.5vh;
            }
        </style>
    </head>
    <%
        String subjects[]
                = {
                    "Mathematics - 1", "Discrete Math", "Electronics - 1", "CS", "English",
                    "Management", "Mathematics - 2", "Stat - 1", "Electronics - 2", "Programming - 1",
                    "Technical Writing", "Economics", "Data Communication",
                    "Introduction to DS", "Stat - 2", "Logic Design", "Mathematics - 3",
                    "Programming - 2", "Data Structure", "Computer Networks - 1", "Files", "Signals and Systems",
                    "Modeling and Simulation", "Database Systems - 1", "Software Engineering - 1", "Internet Technology",
                    "Operating Systems 1", "Fundamental of IS", "Linear Programming",
                    "Decision Support Tools", "CI",
                    "Non Linear", "Decision Support Systems", "Computer for Modeling",
                    "Stochastic Models", "Games Theory", "Networks Optimization",
                    "Analysis - 1", "Advanced Simulation", "Internet Applications",
                    "Inventory Control", "Strategic", "Multi-Objective Prog", "ERP",
                    "Project 1", "Project 2", "Analysis 2", "Database Systems 2"
                };

        int counter = 0;
        float total = 0;
        for (int i = 0; i < 48; i++) {
            String grade = request.getParameter(subjects[i]);
            if (!grade.equals("----") && !grade.equals("Pass") && !grade.equals("Fail")) {
                counter++;
            }

            if (grade.equals("A+")) {
                total += (4 * 3);
            } else if (grade.equals("A")) {
                total += (3.7 * 3);
            } else if (grade.equals("B+")) {
                total += (3.3 * 3);
            } else if (grade.equals("B")) {
                total += (3 * 3);
            } else if (grade.equals("C+")) {
                total += (2.7 * 3);
            } else if (grade.equals("C")) {
                total += (2.4 * 3);
            } else if (grade.equals("D+")) {
                total += (2.2 * 3);
            } else if (grade.equals("D")) {
                total += (2 * 3);
            } else if (grade.equals("F")) {
                total += (0 * 3);
            }
        }

        DecimalFormat df = new DecimalFormat(".00");
        String GPA = df.format(total / (counter * 3));
    %>
    <body>
        <header>
            <h1>GPA Calculator</h1>
        </header>
        <section id="GPA">
            <h1>
                Number of subjects that you put grade to them is : <span><%=counter%></span> .
                <br><br>
                Your GPA is <span><%=GPA%></span> .
            </h1>
        </section>
    </body>
</html>

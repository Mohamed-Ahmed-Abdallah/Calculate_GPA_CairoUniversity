<%-- 
    Document   : index.jsp
    Created on : Apr 10, 2022, 3:54:32 AM
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GPA Calculator</title>
        <link rel="stylesheet" href="CSS/style.css">
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
    %>
    <body>
        <header>
            <h1>GPA Calculator</h1>
        </header>
        <section id="subjects">
            <form action="calculate.jsp" method="post">
                <div class="parent">
                    <%for (int i = 0; i < 48; i++) {%>
                    <div class="child">
                        <p><%=subjects[i]%></p>
                        <select name = "<%=subjects[i]%>">
                            <option>----</option>
                            <option>A+</option>
                            <option>A</option>
                            <option>B+</option>
                            <option>B</option>
                            <option>C+</option>
                            <option>C</option>
                            <option>D+</option>
                            <option>D</option>
                            <option>F</option>
                            <option>Pass</option>
                            <option>Fail</option>
                        </select>
                    </div>
                    <%}%>
                </div>
                <input type="submit" value="Submit">
            </form>
        </section>
    </body>
</html>

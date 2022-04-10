package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>GPA Calculator</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/style.css\">\n");
      out.write("    </head>\n");
      out.write("    ");

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
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <h1>GPA Calculator</h1>\n");
      out.write("        </header>\n");
      out.write("        <section id=\"subjects\">\n");
      out.write("            <form action=\"calculate.jsp\" method=\"post\">\n");
      out.write("                <div class=\"parent\">\n");
      out.write("                    ");
for (int i = 0; i < 48; i++) {
      out.write("\n");
      out.write("                    <div class=\"child\">\n");
      out.write("                        <p>");
      out.print(subjects[i]);
      out.write("</p>\n");
      out.write("                        <select name = \"");
      out.print(subjects[i]);
      out.write("\">\n");
      out.write("                            <option>----</option>\n");
      out.write("                            <option>A+</option>\n");
      out.write("                            <option>A</option>\n");
      out.write("                            <option>B+</option>\n");
      out.write("                            <option>B</option>\n");
      out.write("                            <option>C+</option>\n");
      out.write("                            <option>C</option>\n");
      out.write("                            <option>D+</option>\n");
      out.write("                            <option>D</option>\n");
      out.write("                            <option>F</option>\n");
      out.write("                            <option>Pass</option>\n");
      out.write("                            <option>Fail</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <input type=\"submit\" value=\"Submit\">\n");
      out.write("            </form>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

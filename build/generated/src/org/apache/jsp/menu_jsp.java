package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <link href=\"CSS/menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            \n");
      out.write("        <nav class=\"navigation\">\n");
      out.write("  <ul>\n");
      out.write("    <li class=\"active\">\n");
      out.write("      <a href=\"#\">Home</a>\n");
      out.write("    </li>\n");
      out.write("    <li>\n");
      out.write("      <a href=\"#\">Genre</a>\n");
      out.write("      <ul class=\"children sub-menu\">\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Action</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Adventure</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Comedy</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Fantasy</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Horror</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </li>\n");
      out.write("    <li>\n");
      out.write("      <a href=\"\">Storage</a>\n");
      out.write("      <ul class=\"children sub-menu\">\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Top Anime</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Recently Update</a>\n");
      out.write("        </li>\n");
      out.write("\n");
      out.write("      </ul>\n");
      out.write("    </li>\n");
      out.write("    <li>\n");
      out.write("      <a href=\"\">Premium</a>\n");
      out.write("      <ul class=\"children sub-menu\">\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\"></a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\"></a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </li>\n");
      out.write("     <li>\n");
      out.write("      <a href=\"\">Community</a>\n");
      out.write("      <ul class=\"children sub-menu\">\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Evaluate</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </li>\n");
      out.write("    <li>\n");
      out.write("      <a href=\"\">User</a>\n");
      out.write("      <ul class=\"children sub-menu\">\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Log In</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Register</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">Forget Password</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">our-team</a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\">worker-detail</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </li>\n");
      out.write("  </ul>\n");
      out.write("</nav>\n");
      out.write("    </head>\n");
      out.write("    \n");
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

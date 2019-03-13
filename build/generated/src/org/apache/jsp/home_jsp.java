package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dtos.User;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"CSS/home.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\n");
      out.write("        <title>Home</title>\n");
      out.write("    </head>\n");
      out.write("        ");

            User user = (User) session.getAttribute("loggedInUser");
            if(user != null){
        
      out.write("\n");
      out.write("            <h1>Welcome, ");
      out.print(user.getUsername());
      out.write("</h1>\n");
      out.write("            <h1>Welcome, ");
      out.print(user.getUser_id());
      out.write("</h1>\n");
      out.write("           <div>\n");
      out.write("            <form action=\"Servlet\" method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Search Anime</td><td> <input name=\"genre_name\" size=30 type=\"text\" /> </td> \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <input type=\"submit\" value=Go! /> \n");
      out.write("            <input type=\"hidden\" name =\"action\" value=\"searchAnimeByGenre\" />\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("            <p>Search Anime by Words</p>\n");
      out.write("            <form action=\"Servlet\" method=\"post\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Search </td><td> <input name=\"anime_name\" size=30 type=\"text\" /> </td> \n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                <input type=\"submit\" value=\"Search\" /> \n");
      out.write("                <input type=\"hidden\" name =\"action\" value=\"searchAnimebyWords\" />\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        <p class=\"text-center\"><a href=\"Pay.jsp\" id=\"signup\" >Pay</a></p>\n");
      out.write("            \n");
      out.write("        ");

            }
            else{
                String sessionExpired = "You must be logged in to use this service";
                session.setAttribute("sessionExpired", sessionExpired);
                response.sendRedirect("login.jsp");
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("        <a href=\"Servlet?action=logout\">Logout</a>\n");
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

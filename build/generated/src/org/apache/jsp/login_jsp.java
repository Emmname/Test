package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"../src/java/css/login.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-md-5 mx-auto\">\n");
      out.write("\t\t<div id=\"first\">\n");
      out.write("\t\t<div class=\"myform form \">\n");
      out.write("\t\t<div class=\"logo mb-3\">\n");
      out.write("\t\t<div class=\"col-md-12 text-center\">\n");
      out.write("        <h1>Login</h1>\n");
      out.write("        \n");
      out.write("         ");

                String sessionExpired = (String) session.getAttribute("sessionExpired");
                if(sessionExpired != null){
                    out.println("<b>" + sessionExpired + "</b>");
                    session.removeAttribute("sessionExpired");
                }
            
      out.write("\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("            <form action=\"Servlet\" method=\"post\" name=\"login\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    \n");
      out.write("                    <label for=\"exampleInputEmail1\">Email address</label>\n");
      out.write("                        <input name=\"Username\" required size=20 class=\"form-control\" id=\"email\" type=\"text\" placeholder=\"Enter email\" /> </td> \n");
      out.write("                </div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                        <label for=\"exampleInputEmail1\">Password</label>\n");
      out.write("                        <input name=\"Password\" required size=10 type=\"password\" id=\"password\"  class=\"form-control\" placeholder=\"Enter Password\"/> </td> \n");
      out.write("                   </div>\n");
      out.write("                <div class=\"col-md-12 text-center \">\n");
      out.write("                     <button type=\"submit\" class=\" btn btn-block mybtn btn-primary tx-tfm\">Login</button>\n");
      out.write("                 </div>\n");
      out.write("                \n");
      out.write("                 </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                   <p class=\"text-center\">Don't have account? <a href=\"register.jsp\" id=\"signup\">Sign up here</a></p>\n");
      out.write("                </div>\n");
      out.write("                <input type=\"hidden\" name =\"action\" value=\"login\" />\n");
      out.write("            </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\t</div>\n");
      out.write("        \n");
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

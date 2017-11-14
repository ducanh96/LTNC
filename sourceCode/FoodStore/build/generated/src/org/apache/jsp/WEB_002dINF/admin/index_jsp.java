package org.apache.jsp.WEB_002dINF.admin;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\n");
      out.write("\t\t<meta charset=\"utf-8\" />\n");
      out.write("\t\t<title>Dashboard - Ace Admin</title>\n");
      out.write("\n");
      out.write("\t\t<meta name=\"description\" content=\"overview &amp; stats\" />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />\n");
      out.write("\n");
      out.write("\t\t<!-- bootstrap & fontawesome -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/font-awesome/4.5.0/css/font-awesome.min.css\" />\n");
      out.write("\n");
      out.write("\t\t<!-- page specific plugin styles -->\n");
      out.write("\n");
      out.write("\t\t<!-- text fonts -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/fonts.googleapis.com.css\" />\n");
      out.write("\n");
      out.write("\t\t<!-- ace styles -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/ace.min.css\" class=\"ace-main-stylesheet\" id=\"main-ace-style\" />\n");
      out.write("\n");
      out.write("\t\t<!--[if lte IE 9]>\n");
      out.write("\t\t\t<link rel=\"stylesheet\" href=\"assets/css/ace-part2.min.css\" class=\"ace-main-stylesheet\" />\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/ace-skins.min.css\" />\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/ace-rtl.min.css\" />\n");
      out.write("\n");
      out.write("\t\t<!--[if lte IE 9]>\n");
      out.write("\t\t  <link rel=\"stylesheet\" href=\"assets/css/ace-ie.min.css\" />\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\n");
      out.write("\t\t<!-- inline styles related to this page -->\n");
      out.write("\n");
      out.write("\t\t<!-- ace settings handler -->\n");
      out.write("\t\t<script src=\"assets/js/ace-extra.min.js\"></script>\n");
      out.write("\n");
      out.write("\t\t<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->\n");
      out.write("\n");
      out.write("\t\t<!--[if lte IE 8]>\n");
      out.write("\t\t<script src=\"assets/js/html5shiv.min.js\"></script>\n");
      out.write("\t\t<script src=\"assets/js/respond.min.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\t</head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "hearder_admin.jsp", out, false);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer_admin.jsp", out, false);
      out.write("\n");
      out.write("        </body>\n");
      out.write("</html>\n");
      out.write("\n");
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

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Localeex extends HttpServlet {

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,
      ServletException {

    response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    Locale userPreferredLocale = request.getLocale();
    Enumeration userPreferredLocales = request.getLocales();

    out.println("Preferred Locale: " + userPreferredLocale.toString());
    out.println("");
    out.print("Preferred Locales: ");

    while (userPreferredLocales.hasMoreElements()) {
      userPreferredLocale = (Locale) userPreferredLocales.nextElement();
      out.print(userPreferredLocale.toString() + ", ");
    }
    out.println();
    out.println("");
  }
}

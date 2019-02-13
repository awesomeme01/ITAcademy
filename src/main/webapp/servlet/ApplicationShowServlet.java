package servlet;

import Db.DataBaseConnector;
import Models.Application;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/list")
public class ApplicationShowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Application> applications = DataBaseConnector.applications;
        PrintWriter out = resp.getWriter();
        out.print("<html>");
        out.print("<table style >");
        for(Application app : applications){
            out.print("<tr>");
            out.print("<td>");
            out.print(app.getFio());
            out.print("</td>");
            out.print("<td>");
            out.print(app.getEmail());
            out.print("</td>");
            out.print("<td>");
            out.print(app.getCourse());
            out.print("</td>");
            out.print("</tr>");
        }
        out.print("</table>");
    }
}

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

@WebServlet("/add_apply")
public class ApplyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Application application = null;
        DataBaseConnector db = new DataBaseConnector();
        boolean result;
        try {

            application = new Application(
                    req.getParameter("fio"),
                    req.getParameter("courses"),
                    req.getParameter("email"),
                    req.getParameter("isOnline").equals("on"),
                    req.getParameter("gender"),
                    req.getParameter("birthdate"),
                    req.getParameter("selfstory")
            );
            result = db.addApplication(application);

        }
        catch (NullPointerException e) {
            System.out.println(e);
            result = false;
        }
        PrintWriter out = resp.getWriter();
        out.println(result ? "Заявка успешно добавлена" : "Не получилось добавить заявку");
        System.out.println(application);
    }
}
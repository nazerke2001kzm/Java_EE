package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;
import db.DBManager;
import java.io.IOException;

@WebServlet(value = "/addTask")
public class AddTaskServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
        req.getRequestDispatcher("/addtask.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
            IOException {
        String name = req.getParameter("i_name");
        String description = req.getParameter("i_description");
        String date = req.getParameter("i_date");

        Task item = new Task();
        item.setName(name);
        item.setDescription(description);
        item.setDeadlineDate(date);
        item.setDone("нет");

        DBManager.addTask(item);
        resp.sendRedirect("/");
    }
}

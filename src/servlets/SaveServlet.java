package servlets;

import db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;

import java.io.IOException;
@WebServlet(value = "/save")
public class SaveServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
        req.getRequestDispatcher("/addtask.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
            IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("i_name");
        String description = req.getParameter("i_description");
        String date = req.getParameter("i_date");
        String status = req.getParameter("i_status");

        System.out.println(id+name+date+status);
        Task item = new Task();
        item.setId(Long.parseLong(id));
        item.setName(name);
        item.setDescription(description);
        item.setDeadlineDate(date);
        item.setDone(status);

        DBManager.saveTask(item);
        resp.sendRedirect("/");
    }
}

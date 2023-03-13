package servlets;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Task;
import db.DBManager;
import java.io.IOException;

@WebServlet(value = "/detailsTask")
public class DetailsTaskServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Task item = DBManager.getTask(Long.parseLong(id));
        request.setAttribute("item", item);
        request.getRequestDispatcher("/details.jsp").forward(request, response);
    }

}

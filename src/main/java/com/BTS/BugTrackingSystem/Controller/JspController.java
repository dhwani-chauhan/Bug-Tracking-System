package com.BTS.BugTrackingSystem.Controller;

import org.springframework.stereotype.Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@WebServlet
public class JspController {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("bugsolution");
        if(action.equalsIgnoreCase("add"))
            request.getRequestDispatcher("BugSolution.jsp").forward(request,response);
        else if(action.equalsIgnoreCase("update"))
            request.getRequestDispatcher("BugSolution.jsp").forward(request,response);
        else if(action.equalsIgnoreCase("find"))
            request.getRequestDispatcher("ViewSolution.jsp").forward(request,response);
        else if(action.equalsIgnoreCase(""))
            request.getRequestDispatcher("ViewSolution.jsp").forward(request,response);
    }
}

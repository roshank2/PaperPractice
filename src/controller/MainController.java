package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/login", "/register", "/takeExam", "/logout" ,"/feedback","/about","/adminLogin"})
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String applicationContextPath = request.getContextPath();

		if (request.getRequestURI().equals(applicationContextPath + "/")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/jsps/Home.jsp");
			dispatcher.forward(request, response);
		} else if (request.getRequestURI().equals(
				applicationContextPath + "/login")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/jsps/Login.jsp");
			dispatcher.forward(request, response);
		} else if (request.getRequestURI().equals(
				applicationContextPath + "/adminLogin")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/jsps/adminLoginForm.jsp");
			dispatcher.forward(request, response);
		} else if (request.getRequestURI().equals(
				applicationContextPath + "/feedback")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/jsps/Feedback.jsp");
			dispatcher.forward(request, response);
		}  
		
		else if (request.getRequestURI().equals(
				applicationContextPath + "/about")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/jsps/About.jsp");
			dispatcher.forward(request, response);
		}  
		
		else if (request.getRequestURI().equals(
				applicationContextPath + "/register")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/jsps/Register.jsp");
			dispatcher.forward(request, response);
		} else if (request.getRequestURI().equals(
				applicationContextPath + "/takeExam")) {

			System.out.println(request.getSession().getAttribute("user"));
			
			if (request.getSession().getAttribute("user") == null) {
				request.getRequestDispatcher("/login").forward(request,
						response);
				
			} else {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/jsps/ExamDetails.jsp");
				dispatcher.forward(request, response);
		} 
		}
			else if (request.getRequestURI().equals(
				applicationContextPath + "/logout")) {
			request.getSession().invalidate();
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/");
			dispatcher.forward(request, response);
		}

	}

}
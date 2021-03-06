package com.toymarket.web;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class MainServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.sendRedirect("/WEB-INF/views/customer/index.jsp");
		request.getRequestDispatcher("/WEB-INF/views/customer/index.jsp").forward(request, response);
	}
}

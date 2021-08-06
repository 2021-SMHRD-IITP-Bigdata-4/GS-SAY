package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.maininfoDAO;


@WebServlet("/searchProgram")
public class searchProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String local = request.getParameter("local");
		String category = request.getParameter("category");
		String people = request.getParameter("people");
		String infoname = local + people+category;
		
		System.out.println(infoname);
		
		maininfoDAO dao = new maininfoDAO();
		

	}

}

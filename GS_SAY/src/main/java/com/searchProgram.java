package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.mainInfoDTO;
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
		ArrayList<mainInfoDTO> searchInfo = dao.code(infoname);
		
		if(searchInfo != null) {
			HttpSession session  = request.getSession();
			session.setAttribute("searchInfo", searchInfo);
			System.out.println("전송완료");
			response.sendRedirect("search.jsp");
		}else{
			System.out.println("전송실패");
			response.sendRedirect("search.jsp");
		}
	}

}

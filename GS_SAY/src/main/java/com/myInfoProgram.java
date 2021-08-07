package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.listDTO;
import data.myScrapDAO;

@WebServlet("/myInfoProgram")
public class myInfoProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		listDTO login = (listDTO)session.getAttribute("login");
		String num = request.getParameter("num");
		System.out.println(num);
		
		myScrapDAO dao = new myScrapDAO();
		int cnt = dao.myInfo(login, num);
		
		if (cnt>0) {
			System.out.println("저장성공");
		}else {
			System.out.println("저장실패");
		}
		response.sendRedirect("search.jsp");
	}

}

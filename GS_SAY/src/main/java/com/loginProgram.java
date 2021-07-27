package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.listDAO;
import data.listDTO;

@WebServlet("/loginProgram")
public class loginProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		listDAO dao = new listDAO();
		listDTO dto = new listDTO(id, pw);
		String name = dao.login(dto);
		
		if (name != null) {
			System.out.println(name + "성공");
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			response.sendRedirect("mainHome.jsp");
		}else {
			System.out.println("실패");
			response.sendRedirect("login.jsp");
		}
	}

}

package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.listDAO;
import data.listDTO;

@WebServlet("/joinProgram")
public class joinProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		listDAO dao = new listDAO();
		listDTO dto = new listDTO(id, pw, name, tel);
		int cnt = dao.join(dto);
		
		try {
			
			if (cnt > 0) {
				response.sendRedirect("mainHome.jsp");
			} else {
				response.sendRedirect("join.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

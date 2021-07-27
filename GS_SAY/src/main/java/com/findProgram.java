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

@WebServlet("/findProgram")
public class findProgram extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		String phone = request.getParameter("phone");
		
		listDAO dao = new listDAO();
		listDTO dto = new listDTO(phone);
		listDTO findDto = dao.findID(dto);
		
		if (findDto != null) {
			System.out.println("성공");
			HttpSession session = request.getSession();
			session.setAttribute("findDto", findDto);
		}else {
			System.out.println("실패");
		}
		response.sendRedirect("findSuccess.jsp");
	}

}

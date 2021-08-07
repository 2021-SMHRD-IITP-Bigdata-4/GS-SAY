package com;

import java.io.IOException;
import java.net.URLEncoder;
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
		String tablename = local +" / " + people+ " / "+category;
		if(local !=null && category !=null && people!=null) {
			
		
		if (local.equals("����")) {
			local = "%";
		}
		if (category.equals("��ü")) {
			category = "%";
		}
		if (people.equals("��ü")) {
			people = "%";
		}
		
		String infoname = local + people+category;
		
		System.out.println(infoname);
		System.out.println(tablename);
		maininfoDAO dao = new maininfoDAO();
		ArrayList<mainInfoDTO> searchDTO = dao.code(infoname);
		
		if(searchDTO != null) {
			HttpSession session  = request.getSession();
			session.setAttribute("searchDTO", searchDTO);
			System.out.println("���ۿϷ�");
			response.sendRedirect("search.jsp?name="+URLEncoder.encode(tablename));
		}else{
			System.out.println("���۽���");
			response.sendRedirect("search.jsp");
		}}else {
			System.out.println("���ó� ��");
			response.sendRedirect("search.jsp");
		}
	}

}

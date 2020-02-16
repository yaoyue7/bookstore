package com.hkd.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hkd.entity.ProItInven;
import com.hkd.serviceImpl.ProItInvenServiceImpl;

/**
 * Servlet implementation class DoRemoveCart
 */
@WebServlet("/DoRemoveCart")
public class DoRemoveCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoRemoveCart() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		String itemid=request.getParameter("itemid");
		ProItInvenServiceImpl pisi=new ProItInvenServiceImpl();
		ProItInven pii=pisi.getProItInven(itemid);
		ArrayList<ProItInven> cartlist=(ArrayList<ProItInven>) session.getAttribute("cartlist");
		
		for (ProItInven p : cartlist) {
			if(p.getItemid().equals(pii.getItemid())) {
				cartlist.remove(p);
				break;
			}
		}
		
		session.setAttribute("cartlist",cartlist);
		response.sendRedirect("cart.jsp");
	}

}

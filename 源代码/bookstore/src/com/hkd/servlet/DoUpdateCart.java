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

/**
 * Servlet implementation class DoUpdateCart
 */
@WebServlet("/DoUpdateCart")
public class DoUpdateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoUpdateCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		ArrayList<ProItInven> cartlist=new ArrayList<>();
		if(session.getAttribute("cartlist")!=null) {
			cartlist=(ArrayList<ProItInven>) session.getAttribute("cartlist");
		}
		int i=0;
		double total=0;
		for (ProItInven p : cartlist) {
			String qty=request.getParameter("qty"+i);
			int bqty=Integer.parseInt(qty);
			p.setBuyqty(bqty);
			i++;
			total+=p.getBuyqty()*p.getListprice();
		}
		
		session.setAttribute("total",total);
		response.sendRedirect("cart.jsp");
	}

}

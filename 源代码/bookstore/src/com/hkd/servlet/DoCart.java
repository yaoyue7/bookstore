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
 * Servlet implementation class DoCart
 */
@WebServlet("/DoCart")
public class DoCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoCart() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		
		String itemid=request.getParameter("itemid");
		ProItInvenServiceImpl pisi=new ProItInvenServiceImpl();
		ProItInven pii=pisi.getProItInven(itemid);
		
		ArrayList<ProItInven> cartlist=new ArrayList<>();
		boolean flag=false;
		
		if(session.getAttribute("cartlist")==null) {
			cartlist.add(pii);
		}else {
			cartlist=(ArrayList<ProItInven>) session.getAttribute("cartlist");
			for (ProItInven p : cartlist) {
				double total=0;
				if(p.getItemid().equals(pii.getItemid())) {
					flag=true;
					p.setBuyqty(p.getBuyqty()+1);
					total+=p.getBuyqty()*p.getListprice();
				}
				session.setAttribute("total",total);
			}
		}
		if(!flag) {
			cartlist.add(pii);
		}
		
		session.setAttribute("cartlist",cartlist);
		response.sendRedirect("cart.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

package com.hkd.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hkd.entity.Category;
import com.hkd.entity.Product;
import com.hkd.serviceImpl.CategoryServiceImpl;
import com.hkd.serviceImpl.ProductServiceImpl;

/**
 * Servlet implementation class DoIndex
 */
@WebServlet("/DoIndex")
public class DoIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoIndex() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		
		CategoryServiceImpl csi=new CategoryServiceImpl();
		ProductServiceImpl psi=new ProductServiceImpl();
		ArrayList<Category> clist=csi.getCategory();
		session.setAttribute("clist",clist);
		
		ArrayList<Product> list=new ArrayList();
		HashMap hm=new HashMap();
		for(int i=0;i<clist.size();i++){
			list=psi.getProduct(clist.get(i).getCatid());
			hm.put(clist.get(i).getName(), list);
		}
		
		session.setAttribute("hm", hm);	
		response.sendRedirect("index.jsp");
	}

}

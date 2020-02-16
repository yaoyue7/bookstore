package com.hkd.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hkd.entity.Product;
import com.hkd.serviceImpl.ProductServiceImpl;

/**
 * Servlet implementation class DoProduct
 */
@WebServlet("/DoProduct")
public class DoProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoProduct() {
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
		
		String catid=null;
		if(request.getParameter("category")!=null){
			catid=request.getParameter("category");
			session.setAttribute("catid",catid);
		}
		catid=(String)session.getAttribute("catid");
		ProductServiceImpl psi=new ProductServiceImpl();
		int pageNo=1,pageSize=3;
		int count=psi.getCount(catid);
		int pageSum=(int)(Math.ceil(count/pageSize));	
		session.setAttribute("pageSum",pageSum);
		
		if(session.getAttribute("pageNo")!=null){
			pageNo=(Integer)session.getAttribute("pageNo");
		}
		
		String flag=request.getParameter("flag");
		if(flag!=null){
			if("up".equals(flag)){			
				if(pageNo==pageSum){
					pageNo=1;
				}
				pageNo++;
			}else if("down".equals(flag)){
				if(pageNo==1){
					pageNo=pageSum+1;
				}
				pageNo--;
			}else{
				pageNo=Integer.parseInt(flag);
			}
			session.setAttribute("pageNo",pageNo);
		}
		ArrayList<Product> list=psi.getProduct(catid, pageNo, pageSize);	
		session.setAttribute("plist", list);
		response.sendRedirect("product.jsp");
	}
}

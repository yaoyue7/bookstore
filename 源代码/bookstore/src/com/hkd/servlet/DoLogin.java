package com.hkd.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hkd.entity.Signon;
import com.hkd.serviceImpl.SignonServiceImpl;

/**
 * Servlet implementation class DoLogin
 */
@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletRequest session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLogin() {
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
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		Signon s=new Signon();
		s.setPassword(pwd);
		s.setUsername(uname);
		SignonServiceImpl ssi=new SignonServiceImpl();
		Signon s1=ssi.getSignon(s);
		session = null;
		if(s1!=null){
			session.setAttribute("s1", s1);
			session.setAttribute("uname", s1.getUsername());
			response.sendRedirect("index.jsp");
		}else{
			session.setAttribute("msg", "用户名或密码错误");
			response.sendRedirect("login.jsp");
		}
	}

}

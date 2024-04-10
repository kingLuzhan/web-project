package com.wasa.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class filePageProduct
 */
@WebServlet("/filePageProduct")
public class filePageProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public filePageProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String product_name=request.getParameter("product_name");
		String product_desc=request.getParameter("product_desc");
		int category=Integer.parseInt(request.getParameter("category"));
		int brand=Integer.parseInt(request.getParameter("brand"));
		int color=Integer.parseInt(request.getParameter("color"));
		int size=Integer.parseInt(request.getParameter("size"));
		String product_price=request.getParameter("product_price");
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		String image=request.getParameter("file");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

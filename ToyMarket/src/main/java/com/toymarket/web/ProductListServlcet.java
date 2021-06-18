package com.toymarket.web;

import java.io.IOException;
import java.util.List;

import com.toymarket.vo.Products;
import com.toymarktet.dao.ProductDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product/list")
public class ProductListServlcet extends HttpServlet {
	
	ProductDao productDao = ProductDao.getInstance();
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		List<Products> products = productDao.getAllProducts();
		
		req.setAttribute("products", products);
		
		req.getRequestDispatcher("/WEB-INF/views/product/list.jsp").forward(req, res);
		
	}
	
	
}

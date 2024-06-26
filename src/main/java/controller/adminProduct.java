package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import service.ProductDao;

/**
 * Servlet implementation class adminProduct
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/productadmin" })
public class adminProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
private ProductDao dao;   
    /**
     * @throws ServletException 
     * @see HttpServlet#HttpServlet()
     */
    public void init(ServletConfig config) throws ServletException
    {
    	super.init(config);
    	dao= new ProductDao();
    }
    
    public adminProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			List<Product> listOfProduct= dao.getAllProduct();
			request.setAttribute("listOfProduct", listOfProduct);
			request.getRequestDispatcher("/WEB-INF/view/adminProduct.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

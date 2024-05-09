package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import service.ProductDao;

/**
 * Servlet implementation class adminAddProduct
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/addproduct" })
public class adminAddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductDao productdao;
    /*
     * @see HttpServlet#HttpServlet()
     */
    public adminAddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/view/adminproductForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productName= request.getParameter("productName");
		int productQuantity= Integer.parseInt(request.getParameter("productQuantity"));
		int productPrice= Integer.parseInt(request.getParameter("productPrice"));
		String productDescription= request.getParameter("productDescription");
		
		Product product= new Product();
		product.setProductName(productName);
		product.setProductQuantity(productQuantity);
		product.setProductPrice(productPrice);
		product.setProductDescription(productDescription);
		boolean isSuccess= productdao.saveProduct(product);
		if(isSuccess)
		{
			response.sendRedirect(request.getContextPath()+"/productadmin");
		}
		else
		{
			request.setAttribute("error1", "wrong credentials entered");
			doGet(request,response);
		}
		
	}

}

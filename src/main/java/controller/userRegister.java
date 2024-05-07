package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.UserDao;
import utils.PasswordHashing;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/register")
public class userRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao dao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public userRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		dao = new UserDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstname = request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		String username = request.getParameter("username");
		Date birthday = null;
		try {
			birthday = new java.sql.Date(
					new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("birthday")).getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");
		String reTypePassword = request.getParameter("retypePassword");
		if (!password.equals(reTypePassword)) {
			request.setAttribute("firstname", firstname);
			request.setAttribute("error", "not matched");
			request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
		}
		User user = new User();
		user.setFirstname(firstname);
		user.setLastname(lastname);
		user.setUsername(username);
		user.setBirthday(birthday);
		user.setGender(gender);
		user.setEmail(email);
		user.setPhoneNumber(phoneNumber);
		user.setPassword(PasswordHashing.getPasswordHash(password));
		if (dao.saveUser(user)) {
			
			response.sendRedirect(request.getContextPath()+"/login");
		} else {
			request.setAttribute("error1", "username or email or phonenumber exist");
			request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
		}

	}

}

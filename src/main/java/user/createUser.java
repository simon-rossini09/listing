package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDao;
import bean.User;

/**
 * Servlet implementation class createUser
 */
@WebServlet("/createUser")
public class createUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("n'importe quoi").append(request.getContextPath());
		request.getRequestDispatcher("/listUser1.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String e_mail = request.getParameter("e_mail");
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("confirm_password");
		String adress = request.getParameter("adress");
		String phone_number = request.getParameter("phone_number");
		String city = request.getParameter("city");
		
		System.out.println(firstname+e_mail+password+confirm_password);
		
		User nouvel_user = new User(firstname, lastname, e_mail, password, confirm_password, adress, phone_number, city);
		
		//User nouvel_user = new User(firstname, lastname);
		
		// = UserDao (firstname, lastname); //e_mail, password, confirm_password, adress, phone_number, city//);
		UserDao usDao = new UserDao();
		
		
		//Si la création de l'utilisateur s'est bien passé,
		//Je redirige vers la page de list des utilisateurs
		
		if(usDao.ajoutUser(nouvel_user)) {
			request.getRequestDispatcher("/list.jsp").forward(request, response);
		}
		
		request.getRequestDispatcher("/listUser1.jsp").forward(request, response);
	}

}

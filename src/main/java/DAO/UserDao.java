package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import bean.User;

public class UserDao implements IDAO<User>{

	Connection connect = Connect.getConnection();
	
	@Override
	public boolean ajoutUser(User object) {
		
		boolean message = false;
		try {
			PreparedStatement req = connect.prepareStatement ("INSERT INTO listing (lastname, firstname, e_mail, password, confirm_password, adress, phone_number, city)"
					 + "VALUES (?,?,?,?,?,?,?,?)");
			
			//PreparedStatement req = connect.prepareStatement ("INSERT INTO user (lastname, firstname)"
				//	 + "VALUES (?,?)");

			
			req.setString(1, object.getLastname());
			req.setString(2, object.getFirstname());
			req.setString(3, object.getE_mail());
			req.setString(4, object.getPassword());
			req.setString(5, object.getConfirm_password());
			req.setString(6, object.getAdress());
			req.setString(7, object.getPhone_number());
			req.setString(8, object.getCity());
			
			req.executeUpdate();

			System.out.println( object.getLastname()+ "  " +object.getFirstname() +" a été bien ajouté en base");

			message= true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return message;
	}

}

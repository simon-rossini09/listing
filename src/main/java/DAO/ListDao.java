package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.User;


//Liste des utilisateurs
	public class ListDao {
		Connection connect = Connect.getConnection();
	public List<User> List() {
		List<User> listingUser = new ArrayList<>();
		try {
			
			PreparedStatement req = connect.prepareStatement("SELECT * FROM listing");
			System.out.println(req);
			ResultSet rs = req.executeQuery();
			
			while(rs.next()) {
				User user = new User();
						
				user.setFirstname(rs.getString("firstname"));
				user.setLastname(rs.getString("lastname"));
				user.setE_mail(rs.getString("e_mail"));
				user.setPassword(rs.getString("password"));
				user.setConfirm_password(rs.getString("confirm_password"));
				user.setAdress(rs.getString("adress"));
				user.setPhone_number(rs.getString("phone_number"));
				user.setCity(rs.getString("city"));
				
				 listingUser.add(user);
			}
			//System.out.println(listingUser+"test test ");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Insertion KO - KO - KO");
		}
		return listingUser;
	}
	
	
		}
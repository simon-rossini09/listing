package bean;

public class User {
	private int id;
	private String lastname;
	private String firstname;
	private String e_mail;
	private String password;
	private String confirm_password;
	private String adress;
	private String phone_number;
	private String city;

	public User(String lastname, String firstname, String e_mail, String password, String confirm_password,
			String adress, String phone_number, String city) {
		super();
		this.lastname = lastname;
		this.firstname = firstname;
		this.e_mail = e_mail;
		this.password = password;
		this.confirm_password = confirm_password;
		this.adress = adress;
		this.phone_number = phone_number;
		this.city = city;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getLastname() {
		return lastname;
	}


	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public String getFirstname() {
		return firstname;
	}


	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}


	public String getE_mail() {
		return e_mail;
	}


	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getConfirm_password() {
		return confirm_password;
	}


	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}


	public String getAdress() {
		return adress;
	}


	public void setAdress(String adress) {
		this.adress = adress;
	}


	public String getPhone_number() {
		return phone_number;
	}


	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", lastname=" + lastname + ", firstname=" + firstname + ", e_mail=" + e_mail
				+ ", password=" + password + ", confirm_password=" + confirm_password + ", adress=" + adress
				+ ", phone_number=" + phone_number + ", city=" + city + "]";
	}
}



package cn.edu.neu.model;

public class User { 

	private int userId;
	
	private String userName;
	
	private String userPass;
	
	private int userAge;
	
	private int userSex;
	
	private String userEmail;
	
	private int userRank;
	
	public User(int userId, int userAge, String userName, String userPass, int userSex, String userEmail,
			int userRank) {
		super();
		this.userId = userId;
		this.userName = userName;
		
	}


	public int getUserRank() {
		return userRank;
	}

	public void setUserRank(int userRank) {
		this.userRank = userRank;
	}

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	public int getUserSex() {
		return userSex;
	}

	public void setUserSex(int userSex) {
		this.userSex = userSex;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPass=" + userPass + ", userAge=" + userAge
				+ ", userSex=" + userSex + ", userEmail=" + userEmail + ", userRank=" + userRank + "]";
	}

	
}

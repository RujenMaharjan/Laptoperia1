package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import utils.DatabaseConnectivity;
import utils.PasswordHashing;

public class UserDao {
	
	private Connection conn;
	private PreparedStatement statement;
	private ResultSet resultSet;
	private boolean isSuccess;
	
	
	public UserDao()
	{
		conn=DatabaseConnectivity.getDbConnection();
	}
	
	public boolean saveUser(User user)
	{
		String query="select count(*) from customer";
		try {
			statement= conn.prepareStatement(query);
			resultSet= statement.executeQuery();
			if(resultSet.next()) {
				boolean isFind= check(user);
				if(isFind)
				{
					isSuccess= false;
				}
				else
				{
					int row= insertUserdata(user);
					if(row>0)
					{
						isSuccess=true;
					}
				}
			}
			else
			{
				int row= insertUserdata(user);
				if(row>0)
				{
					isSuccess=true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public int insertUserdata(User user) throws SQLException
	{
		String query= "Insert into customer"
				+ "(firstname,lastname,username,birthday,gender,email,phoneNumber,password) "
				+ "values(?,?,?,?,?,?,?,?)";
		statement= conn.prepareStatement(query);
		statement.setString(1, user.getFirstname());
		statement.setString(2, user.getLastname());
		statement.setString(3, user.getUsername());
		statement.setDate(4, user.getBirthday());
		statement.setString(5, user.getGender());
		statement.setString(6, user.getEmail());
		statement.setString(7, user.getPhoneNumber());
		statement.setString(8, user.getPassword());
		
		int row=statement.executeUpdate();
		return row;
	}
	public boolean check(User user) throws SQLException
	{
		String query="select username,email,phoneNumber from customer";
		statement= conn.prepareStatement(query);
		
		resultSet= statement.executeQuery();
		boolean isFind= false;
		while (resultSet.next())
		{
			String usernameFromDb= resultSet.getString("username");
			String emailFromDb= resultSet.getString("email");
			String phoneNumberFromDb= resultSet.getString("phoneNumber");
			
			if(user.getUsername().equals(usernameFromDb))
			{
				isFind= true;
				break;
			}
			else if(user.getEmail().equals(emailFromDb))
			{
				isFind=true;
				break;
			}
			else if(user.getPhoneNumber()==phoneNumberFromDb)
			{
				isFind= true;
				break;
			}
			
		}
		return isFind;
	}
	public boolean userLogin(String username, String password) throws SQLException {
		statement = conn.prepareStatement("select username,password from customer where username=?");
		statement.setString(1, username);
		resultSet = statement.executeQuery();
		boolean isSuccess = false;
		if (resultSet.next()) {
			String passwordFromDb = resultSet.getString("password");

			if (PasswordHashing.verifyPassword(password, passwordFromDb)) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		}
		return isSuccess;

	}

}

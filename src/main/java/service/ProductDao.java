package service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import model.*;
import utils.DatabaseConnectivity;

public class ProductDao {
	private Connection conn;
	private PreparedStatement statement;
	private ResultSet resultSet;
	private boolean isSuccess;
	private String queryy;
	private static final String query="insert into product"
			+"(productName,productQuantity,productPrice,productDescription)"
			+"values(?,?,?,?)";
	
	public ProductDao() {
		conn= DatabaseConnectivity.getDbConnection();
	} 
	public boolean checkProduct(Product product)
	{
		boolean isFind= false;
		try {
			statement=  conn.prepareStatement("select productName fron product");
			resultSet= statement.executeQuery();
			
			while(resultSet.next())
			{
				if(product.getProductName().equals(resultSet.getString("productName")))
				{
					isFind=true;
					break;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isFind;
		
	}
	
	public int setData(Product product) throws SQLException
	{
			statement= conn.prepareStatement(query);
			statement.setString(1, product.getProductName());
			statement.setInt(2, product.getProductQuantity());
			statement.setInt(3, product.getProductPrice());
			statement.setString(4, product.getProductDescription());
			int row=statement.executeUpdate();
			return row;
	}
	
	public boolean saveProduct(Product product)
	{
		try {
			statement= conn.prepareStatement("select count(*) from product");
			resultSet= statement.executeQuery();
			if(resultSet.next())
			{
				if(checkProduct(product))
				{
					isSuccess=false;
				}
				else
				{
					int row=setData(product);
					if(row>0)
					{
						isSuccess= true;
					}
				}
			}
			else
			{
				int row= setData(product);
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


public List<Product> getAllProduct() throws SQLException {
	statement=conn.prepareStatement("select productName,productQuantity,productPrice from product");
	resultSet=statement.executeQuery();
	List<Product> listOfProduct=new ArrayList<Product>();
	while(resultSet.next())
	{
		String productName= resultSet.getString("productName");
		int productQuantity= resultSet.getInt("productQuantity");
		int productPrice= resultSet.getInt("productPrice");
		
		Product product=new Product();
		product.setProductName(productName);
		product.setProductQuantity(productQuantity);
		product.setProductPrice(productPrice);
		
		listOfProduct.add(product);
	}
	return listOfProduct;
}
}

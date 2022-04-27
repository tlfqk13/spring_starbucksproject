package com.scit.starbucks.ordervo;

import lombok.Data;

public class OrderVO {

	private int orderID;
	private int orderCode;
	private String userID;
	private int productQuantity;
	private String drinksize;
	private String drinkname; 
	private String price;
	private int customInfoID;
	private int cartID;
	
	public OrderVO() 
	{
		super();
	}
	
	public int getOrderID() 
	{
		return orderID;
	}


	public void setOrderID(int orderID) 
	{
		this.orderID = orderID;
	}


	public int getOrderCode() 
	{
		return orderCode;
	}


	public void setOrderCode(int orderCode) 
	{
		this.orderCode = orderCode;
	}


	public String getUserID() 
	{
		return userID;
	}


	public void setUserID(String userID) 
	{
		this.userID = userID;
	}


	public int getProductQuantity() 
	{
		return productQuantity;
	}


	public void setProductQuantity(int productQuantity) 
	{
		this.productQuantity = productQuantity;
	}


	public String getDrinksizeID() 
	{
		return drinksize;
	}


	public void setDrinksizeID(String drinksizeID) 
	{
		this.drinksize = drinksizeID;
	}


	public String getProductName() 
	{
		return drinkname;
	}


	public void setProductName(String productName) 
	{
		this.drinkname = productName;
	}


	public String getPrice() 
	{
		return price;
	}


	public void setPrice(String price) 
	{
		this.price = price;
	}


	public int getCustomInfoID() 
	{
		return customInfoID;
	}


	public void setCustomInfoID(int customInfoID) 
	{
		this.customInfoID = customInfoID;
	}

	public int getCartID() 
	{
		return cartID;
	}

	public void setCartID(int cartID) 
	{
		this.cartID = cartID;
	}

}

package com.scit.starbucks.ordervo;

import lombok.Data;


public class CartVO {
	private int cartID;
	private String userID;
	private int productQuantity;
	private String drinksize;
	private String drinkname;
	private int customInfoID;
	private String price;

	public CartVO() 
	{
		super();
	}

	public int getCartID() 
	{
		return cartID;
	}

	public void setCartID(int cartID) 
	{
		this.cartID = cartID;
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

	public int getCustomInfoID() 
	{
		return customInfoID;
	}

	public void setCustomInfoID(int customInfoID) 
	{
		this.customInfoID = customInfoID;
	}

	public String getPrice() 
	{
		return price;
	}

	public void setPrice(String price) 
	{
		this.price = price;
	}

	
	
}

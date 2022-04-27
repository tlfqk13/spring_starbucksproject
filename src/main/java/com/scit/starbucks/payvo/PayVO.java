package com.scit.starbucks.payvo;


public class PayVO {
	private int payID;
	private String userID;
	private int orderID;
	private String payType;
	private String payDate;
	private int cartID;

	public PayVO() 
	{
		super();
	}
	public int getPayID() 
	{
		return payID;
	}
	public void setPayID(int payID) 
	{
		this.payID = payID;
	}
	public String getUserID() 
	{
		return userID;
	}
	public void setUserID(String userID) 
	{
		this.userID = userID;
	}
	public int getOrderID() 
	{
		return orderID;
	}
	public void setOrderID(int orderID) 
	{
		this.orderID = orderID;
	}
	public String getPayType() 
	{
		return payType;
	}
	public void setPayType(String payType) 
	{
		this.payType = payType;
	}
	public String getPayDate() 
	{
		return payDate;
	}
	public void setPayDate(String payDate) 
	{
		this.payDate = payDate;
	}
	public int getCartID() {
		return cartID;
	}
	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	
	
}

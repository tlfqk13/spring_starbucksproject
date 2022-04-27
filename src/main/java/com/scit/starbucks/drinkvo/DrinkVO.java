package com.scit.starbucks.drinkvo;


public class DrinkVO {
	private int drinkID;
	private int categoryID;
	private String drinkName;
	private String drinkPrice;
	private int drinkTypeID;
	private String drinkReleaseDate;
	private int drinkStock;
	private int drinkSizeID;
	private String drinkContent; 
	private int drinkSeasonID; 
	private int customInfoID;
	
	
	
	public int getDrinkID() {
		return drinkID;
	}
	public void setDrinkID(int drinkID) {
		this.drinkID = drinkID;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		
		this.categoryID = categoryID;
	}
	public String getDrinkName() {
		return drinkName;
	}
	public void setDrinkName(String drinkName) {
		this.drinkName = drinkName;
	}
	public String getDrinkPrice() {
		return drinkPrice;
	}
	public void setDrinkPrice(String drinkPrice) {
		this.drinkPrice = drinkPrice;
	}
	public int getDrinkTypeID() {
		return drinkTypeID;
	}
	public void setDrinkTypeID(int drinkTypeID) {
		this.drinkTypeID = drinkTypeID;
	}
	public String getDrinkReleaseDate() {
		return drinkReleaseDate;
	}
	public void setDrinkReleaseDate(String drinkReleaseDate) {
		this.drinkReleaseDate = drinkReleaseDate;
	}
	public int getDrinkStock() {
		return drinkStock;
	}
	public void setDrinkStock(int drinkStock) {
		this.drinkStock = drinkStock;
	}
	public int getDrinkSizeID() {
		return drinkSizeID;
	}
	public void setDrinkSizeID(int drinkSizeID) {
		this.drinkSizeID = drinkSizeID;
	}
	public String getDrinkContent() {
		return drinkContent;
	}
	public void setDrinkContent(String drinkContent) {
		this.drinkContent = drinkContent;
	}
	public int getDrinkSeasonID() {
		return drinkSeasonID;
	}
	public void setDrinkSeasonID(int drinkSeasonID) {
		this.drinkSeasonID = drinkSeasonID;
	}
	public int getCustomInfoID() {
		return customInfoID;
	}
	public void setCustomInfoID(int customInfoID) {
		this.customInfoID = customInfoID;
	}
	@Override
	public String toString() {
		return drinkName+ "\n"+
			   drinkPrice+"원";
	}

}

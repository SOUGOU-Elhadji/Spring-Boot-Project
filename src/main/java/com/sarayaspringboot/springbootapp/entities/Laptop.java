package com.sarayaspringboot.springbootapp.entities;

import java.util.Objects;

public class Laptop {
	private String user;
	private int id;
	private String make;
	private String model;
	private String description;
	private int price;
	private String picture;
	
	public Laptop() {
		super();
	}
	
	
	public Laptop(String user, int id, String make, String model, String description, int price, String picture) {
		super();
		this.user = user;
		this.id = id;
		this.make = make;
		this.model = model;
		this.description = description;
		this.price = price;
		this.picture = picture;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Laptop other = (Laptop) obj;
		return id == other.id;
	}
	@Override
	public String toString() {
		return "Laptop [user=" + user + ", id=" + id + ", make=" + make + ", model=" + model + ", description="
				+ description + ", price=" + price + ", picture=" + picture + "]";
	}
	
	
	
	
}

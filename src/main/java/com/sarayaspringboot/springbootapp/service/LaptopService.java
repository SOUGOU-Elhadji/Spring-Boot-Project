package com.sarayaspringboot.springbootapp.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sarayaspringboot.springbootapp.entities.Laptop;


@Service
public class LaptopService {
	public static List<Laptop> laptops = new ArrayList<Laptop>();
	public static int count = 6;
	
	static {
		laptops.add(new Laptop("malick", 1,  "Lenovo", "T540", "Its widescreen TFT LCD screen which measures 15.6 inches diagonally and after which the laptop is named, supports a 1366 by 768 connection. ", 150000, "https://techcrunch.com/wp-content/uploads/2020/12/nokia-laptop.jpg"));
		laptops.add(new Laptop("malick", 2,  "Hp", "T540", "Its widescreen TFT LCD screen which measures 15.6 inches diagonally and after which the laptop is named, supports a 1366 by 768 connection. ", 150000, "https://techcrunch.com/wp-content/uploads/2020/12/nokia-laptop.jpg"));
		laptops.add(new Laptop("malick", 3,  "Dell", "T540", "Its widescreen TFT LCD screen which measures 15.6 inches diagonally and after which the laptop is named, supports a 1366 by 768 connection. ", 150000, "https://techcrunch.com/wp-content/uploads/2020/12/nokia-laptop.jpg"));
		laptops.add(new Laptop("malick", 4,  "MacBook", "T540", "Its widescreen TFT LCD screen which measures 15.6 inches diagonally and after which the laptop is named, supports a 1366 by 768 connection. ", 150000, "https://techcrunch.com/wp-content/uploads/2020/12/nokia-laptop.jpg"));
		laptops.add(new Laptop("malick", 5,  "Asus", "T540", "Its widescreen TFT LCD screen which measures 15.6 inches diagonally and after which the laptop is named, supports a 1366 by 768 connection. ", 150000, "https://techcrunch.com/wp-content/uploads/2020/12/nokia-laptop.jpg"));
		laptops.add(new Laptop("malick", 6,  "Acer", "T540", "Its widescreen TFT LCD screen which measures 15.6 inches diagonally and after which the laptop is named, supports a 1366 by 768 connection. ", 150000, "https://techcrunch.com/wp-content/uploads/2020/12/nokia-laptop.jpg"));
		
	}
	public List<Laptop> getAll(String user) {
		List<Laptop> listLaptop = new ArrayList<Laptop>();
		for (Laptop laptop : listLaptop) {
			if (laptop.getUser().equalsIgnoreCase(user)) {
				listLaptop.add(laptop);
			}
		}
		return laptops;
	}
	
	public void addLaptop(String user, String make, String model, String description, int price, String picture) {
		// TODO Auto-generated method stub
		laptops.add(new Laptop(user, ++count, make, model, description, price, picture));
	}
	
	public Laptop findById(int id) {
		for (Laptop laptop : laptops) {
			if (laptop.getId() == id) {
				return laptop;
			}
		}
		return null;
	}
	
	public void updateLaptop(Laptop laptop) {
		laptops.remove(laptop);
		laptops.add(laptop);
	}
	
	public void deleteLaptop(int id) {
		// TODO Auto-generated method stub
		Iterator<Laptop> iterator = laptops.iterator();
		while (iterator.hasNext()) {
			Laptop laptop = iterator.next();
			if (laptop.getId() == id) {
				iterator.remove();
			}
			
		}
	}
		
}


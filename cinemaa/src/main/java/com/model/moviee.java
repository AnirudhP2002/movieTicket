package com.model;

public class moviee {
	private int id;
	private String name;
	private String category;
	private String view;
	public moviee() {
	}
	public moviee(int id, String name, String category, String view) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.view = view;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	@Override
	public String toString() {
		return "moviee [id=" + id + ", name=" + name + ", category=" + category + ", view=" + view + "]";
	}
	
	
	
}

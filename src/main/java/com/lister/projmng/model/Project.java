package com.lister.projmng.model;

import java.util.ArrayList;

public class Project {

	private String name;
	private String status;
	private int estimatedHours;
	private int utilizedHours;
	private ArrayList<Resource> allocatedResources;
	private String comment;
	private int id;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getEstimatedHours() {
		return estimatedHours;
	}
	public void setEstimatedHours(int estimatedHours) {
		this.estimatedHours = estimatedHours;
	}
	public int getUtilizedHours() {
		return utilizedHours;
	}
	public void setUtilizedHours(int utilizedHours) {
		this.utilizedHours = utilizedHours;
	}
	public ArrayList<Resource> getAllocatedResources() {
		return allocatedResources;
	}
	public void setAllocatedResources(ArrayList<Resource> allocatedResources) {
		this.allocatedResources = allocatedResources;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}

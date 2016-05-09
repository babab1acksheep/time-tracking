package com.lister.projmng.service;

import java.util.ArrayList;

import com.lister.projmng.model.Resource;

public interface ResourceService {

	public ArrayList<Resource> getAllUsers();
	public boolean doesUserExist(Resource user);		
	public void createUser(Resource user);
	public void editUser(Resource user);
	public void removeUser(Resource user);
	
}

package com.lister.projmng.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lister.projmng.model.Resource;

@Service("resourceDao")
@Transactional
public class ResourceDAOImpl {

	public ArrayList<Resource> getAllUsers(){
		return null;
	}
	
	public boolean doesUserExist(Resource user){
		return true;
	}
	
	public void createUser(Resource user){
		
	}
	
	public void editUser(Resource user){
		
	}
	
	public void removeUser(Resource user){
		
	}
}

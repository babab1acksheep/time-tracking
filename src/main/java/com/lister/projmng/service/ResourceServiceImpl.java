package com.lister.projmng.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lister.projmng.dao.ResourceDAO;
import com.lister.projmng.model.Resource;

@Service("resourceService")
public class ResourceServiceImpl {
	
	@Autowired
	ResourceDAO resourceDao;
	
	public ArrayList<Resource> getAllUsers(){
		return resourceDao.getAllUsers();
	}
	
	public boolean doesUserExist(Resource user){
		return resourceDao.doesUserExist(user);
	}
	
	public void createUser(Resource user){
		resourceDao.createUser(user);
	}
	
	public void editUser(Resource user){
		resourceDao.editUser(user);
	}
	
	public void removeUser(Resource user){
		resourceDao.removeUser(user);
	}

}

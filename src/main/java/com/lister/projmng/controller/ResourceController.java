package com.lister.projmng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.lister.projmng.model.Resource;
import com.lister.projmng.service.ResourceService;

@RestController
public class ResourceController {

	@Autowired
	ResourceService resourceService;
	
	@RequestMapping(value = "/user/add", method = RequestMethod.POST)
	public void createUser(@RequestBody Resource user, UriComponentsBuilder ucBuilder){
		
	}
	
}

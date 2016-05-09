'use strict';

App.controller('ResourceController', ['$scope', 'ResourceService','$location', function($scope, ResourceService, $location) {
	      var baseUrl = $location.absUrl();
          var self = this;
          self.user={firstName:'',lastName:'',email:'',employeeId:'',designation:''};
          self.user=[];
          self.user.availableRoles= [
                             {id: 'TL', name: 'Team Lead'},
                             {id: 'SE', name: 'Software Engineer'},
                             {id: 'SSE', name: 'Senior Software Engineer'},
                             {id: 'QA', name:'Quality Assurance'}
                           ];          
              
          self.fetchAllUsers = function(baseUrl){
        	  ResourceService.fetchAllUsers(baseUrl)
                  .then(
      					       function(d) {
      						        self.users = d;
      					       },
            					function(errResponse){
            						console.error('Error while fetching Currencies');
            					}
      			       );
          };
           
          self.createUser = function(user,baseUrl){
        	  ResourceService.createUser(user,baseUrl)
		              .then(
                      self.fetchAllUsers, 
				              function(errResponse){
					               console.error('Error while creating User.');
				              }	
                  );
          };

         self.updateUser = function(user, id,baseUrl){
        	 ResourceService.updateUser(user, id,baseUrl)
		              .then(
				              self.fetchAllUsers, 
				              function(errResponse){
					               console.error('Error while updating User.');
				              }	
                  );
          };

         self.deleteUser = function(id,baseUrl){
        	 ResourceService.deleteUser(id,baseUrl)
		              .then(
				              self.fetchAllUsers, 
				              function(errResponse){
					               console.error('Error while deleting User.');
				              }	
                  );
          };

          self.fetchAllUsers(baseUrl);

          self.submit = function() {
              if(self.user.id==null){
                  console.log('Saving New User', self.user);    
                  self.createUser(self.user);
              }else{
                  self.updateUser(self.user, self.user.id);
                  console.log('User updated with id ', self.user.id);
              }
              self.reset();
          };
              
          self.edit = function(id,baseUrl){
              console.log('id to be edited', id);
              for(var i = 0; i < self.users.length; i++){
                  if(self.users[i].id == id) {
                     self.user = angular.copy(self.users[i]);
                     break;
                  }
              }
          };
              
          self.remove = function(id,baseUrl){
              console.log('id to be deleted', id);
              if(self.user.id === id) {//clean form if the user to be deleted is shown there.
                 self.reset();
              }
              self.deleteUser(id,baseUrl);
          };

          
          self.reset = function(){
        	  self.user={firstName:'',lastName:'',email:'',employeeId:'',designation:'',reportingTo:''};
              $scope.myForm.$setPristine(); //reset Form
          };

      }]);

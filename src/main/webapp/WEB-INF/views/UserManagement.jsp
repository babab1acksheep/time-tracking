<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS $http Example</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
  </head>
  <body ng-app="myApp" class="ng-cloak">
      <div class="generic-container" ng-controller="UserController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Registration Form </span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.employeeId" />
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">First Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.firstName" name="fname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.fname.$error.required">This is a required field</span>                                      
                                      <span ng-show="myForm.fname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Last Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.lastName" name="lname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.lname.$error.required">This is a required field</span>                                      
                                      <span ng-show="myForm.lname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Email</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.email" name="email" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.email.$error.required">This is a required field</span>                                      
                                      <span ng-show="myForm.email.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Employee ID</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.employeeId" name="empId" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.empId.$error.required">This is a required field</span>                                      
                                      <span ng-show="myForm.empId.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Designation</label>
                              <div class="col-md-7">
                                  <select name="roleSelect" id="roleSelect" ng-model="ctrl.user.designation">
      							  		<option ng-repeat="option in ctrl.user.availableRoles" value="{{option.id}}">{{option.name}}</option>
    							  </select>                                  
                              </div>
                          </div>
                      </div>                                                                                                              
                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit" value="{{!ctrl.user.employeeId ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Employees </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                          	  <th>Employee ID</th>
                              <th>First Name</th>
                              <th>Last Name</th>
                              <th>Email</th>
                              <th>Designation</th>                              
                              <th width="20%"></th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in ctrl.users">
                              <td><span ng-bind="u.employeeId"></span></td>
                              <td><span ng-bind="u.firstName"></span></td>
                              <td><span ng-bind="u.lastName"></span></td>
                              <td><span ng-bind="u.email"></span></td>
                              <td><span ng-bind="u.designation"></span></td>
                              <td>
                              <button type="button" ng-click="ctrl.edit(u.employeeId)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(u.employeeId)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
      
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
  </body>
</html>
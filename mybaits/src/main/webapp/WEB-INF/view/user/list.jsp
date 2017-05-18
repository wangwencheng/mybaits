<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<script src="https://cdn.bootcss.com/angular.js/1.6.3/angular.min.js"></script>
</head>
<body>

<div ng-app="user" ng-controller="userController"> 


  <table>
		  <tr>
		    <td>用户名</td>
		    <td>密码</td>
		    <td>年龄</td>
		  </tr>
		  <tr ng-repeat="x in names">
		    <td >{{ x.userName }}</td>
		    <td>{{ x.password }}</td>
		    <td>{{ x.age }}</td>
		  </tr>
</table>

</div>

<script>
var app = angular.module('user', []);
app.controller('userController', function($scope, $http) {
    $http.post("/mybaits/user/datas.htm")
    .then(function (result) {
        $scope.names = result.data;
        console.log($scope.names);
    });
});
</script>

</body>
</html>
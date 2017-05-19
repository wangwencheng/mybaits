<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/include/include_head.jsp"%> 
    <script type="text/javascript">
		function User(){}
			User.prototype.saveOrUpdate=function(uid){
			    if(uid==undefined){
			    	uid='';
			    }
				$('#userModal').modal({
					backdrop:'static',
					remote:'${pageContext.request.contextPath}/user/saveOrUpdate.htm?uid='+uid+'&_time='+new Date().getTime()
				});
				$("#userModal").on("hide.bs.modal", function() {
					$(this).removeData("bs.modal");
				});
			};
			User.prototype.xsaveOrUpdate=function(){
				var _time = new Date().getTime();
				$("#userForm").ajaxSubmit({
					url:'${pageContext.request.contextPath}/user/xSaveOrUpdate.htm?&_time='+_time,
					beforeSubmit:function(){
						$('#userForm').bootstrapValidator('validate');
						return $("#userForm").data('bootstrapValidator').isValid();
					},
					success: function (data) {
						var obj=jQuery.parseJSON(data);
				       	 if(obj.error==false){
				       		$('#userModal').modal('toggle');
				       		toastr.success(obj.message);
				       		$('#userTable').bootstrapTable('refresh');
				       	 }else{
				       		toastr.error(obj.message);
				       	 } 
					}
				});
				return false;
			};
			User.prototype.del=function(){
				var ids=$.map($("#userTable").bootstrapTable('getSelections'),function(row){
					return row.uid;
				});
				if(ids.length==0){
					toastr.error('请选择至少一条记录');
					return;
				}
				$('#deluserModal').modal({
					backdrop:'static',
					show:true
				});
			};
			User.prototype.xdelete=function(){
				var _time = new Date().getTime();
				var ids=$.map($("#userTable").bootstrapTable('getSelections'),function(row){
					return row.uid;
				});
				if(ids.length==0){
					toastr.error('请选择至少一条记录');
					return;
				}
				ids=ids.join(",");
				$.ajax({
						url : siteUrl+'fullDelete.action?ids='+ids+'&_time='+_time,
						dataType : 'json',
						success : function(data) {
							 if (data.error==false) {
								$('#deluserModal').modal('toggle');
						       	toastr.success(data.message);
						       	$('#userTable').bootstrapTable('refresh');
							} else{
								toastr.error(data.message);
							}
					 }
				});
			};
			User.prototype.detail=function(id){
				$('#userModal').modal({
					backdrop:'static',
					remote: siteUrl+'sysUser/detail.xhtml?id='+id+'&_time='+new Date().getTime()
				});
				$("#userModal").on("hide.bs.modal", function() {
					$(this).removeData("bs.modal");
				});
			};
   var user=new User();
</script>
</head>
<body class="sticky-header">
<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.action"><img src="${pageContext.request.contextPath}/assets/custom/images/logo.png" alt=""></a>
        </div>
        <div class="logo-icon text-center">
            <a href="index.action"><img src="${pageContext.request.contextPath}/assets/custom/images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->
            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav" id="mainTree">
                <li class="active">
                	<a href="${pageContext.request.contextPath}/index.action">
	                	<i class="fa fa-home"></i>
	                 	<span>首页</span>
                 	</a>
                </li>
            </ul>
            <!--sidebar nav end-->
        </div>
    </div>
    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

        <!--toggle button start-->
        <a class="toggle-btn"><i class="fa fa-bars"></i></a>
        <!--toggle button end-->

        <!--notification menu start -->
        <div class="menu-right">
            <ul class="notification-menu">
                <li>
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <img src="${pageContext.request.contextPath}/assets/custom/images/photos/user-avatar.png" alt="" />
                        ${sessionScope.loginUser.username}
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                        <li><a href="javascript:main.onlineUser()"><i class="fa fa-user"></i> <span>在线人数<span style="margin-left: 10px" id="userCount"></span></span></a><li>
	                    <li><a href="javascript:main.update()"><i class="fa fa-user"></i> <span>信息维护</span></a></li>
	                    <li><a href="javascript:main.updatePassword()"><i class="fa fa-cog"></i> <span>密码修改</span></a></li>
	                    <li><a href="${pageContext.request.contextPath}/logout.action"><i class="fa fa-sign-out"></i> <span>退出帐号</span></a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <!--notification menu end -->

        </div>
        <!-- header section end-->
		<div id="content">
	        <!--body wrapper start-->
		<div class="wrapper" style="padding: 10px;">
	<div class="row">
		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading">
				用户管理
				</header>
				<div class="panel-body" style="min-height: 600px;">
					<div id="userToolbar" class="btn-group">
					    <button title="新建用户" type="button" class="btn btn-default" data-toggle="modal" onclick="javascript:user.saveOrUpdate();">
					        <i class="glyphicon glyphicon-plus"></i>
					    </button>
					    <button title="删除用户" type="button" class="btn btn-default" data-toggle="modal" onclick="javascript:user.del();">
					        <i class="glyphicon glyphicon-trash"></i>
					    </button>
					</div>
		                <div class="table-responsived" ng-app="user" ng-controller="userController"> 
							  	<table class="table table-bordered" id="userTable">
									  <tr>
									    <th>用户名</td>
									    <th>密码</td>
									    <th>年龄</td>
									    <th>操作</th>
									  </tr>
									  <tr ng-repeat="user in names">
									    <td>{{ user.userName }}</td>
									    <td>{{ user.password }}</td>
									    <td>{{ user.age }}</td>
									    <td><a href="#" onclick="javascript:user.del();"">删除</a></td>
									  </tr>
		                        </table>
	                    </div>
				</div>
	        </section>
		</div>
	</div>
</div>
<!-- modal  -->   
<div class="modal fade" id="userModal" tabindex="-1" User="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" User="document">
    <div class="modal-content">
    	<!-- modal内容 -->
    </div>
  </div>
</div>

<div class="modal fade" id="deluserModal" tabindex="-1" User="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-sm" User="document">
    <div class="modal-content">
    	<div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">确认</h4>
	    </div>
	    <div class="modal-body">
	       <strong>您确认想要删除吗？</strong>
	    </div>
	    <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="button" class="btn btn-primary" onclick="javascript:user.xdelete();">删除</button>
	    </div>
    </div>
  </div>
</div>
		</div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer class="sticky-footer">
            2017 &copy; 空气智能监测系统
        </footer>
        <!--footer section end-->
    </div>
    <!-- main content end-->

<div class="modal fade" id="mainModal" tabindex="-1"  User="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" User="document">
    <div class="modal-content">
    	<!-- modal内容 -->
    </div>
  </div>
</div>
<div class="modal fade" id="TipMainModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
    	<div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">提示</h4>
	    </div>
	    <div class="modal-body">
	       <strong>已强行退出，请重新登录！</strong>
	    </div>
	    <div class="modal-footer">
	        <button type="button" class="btn btn-primary" onclick="javascript:main.logout();">确定</button>
	    </div>
    </div>
  </div>
</div>
</section>
<!--common scripts for all pages-->
<script src="${pageContext.request.contextPath}/assets/custom/js/scripts.js"></script>
<%-- <script src="${pageContext.request.contextPath}/assets/plugs/echarts/require.js"></script> --%>
<script>
	var app = angular.module('user', []);
	app.controller('userController', function($scope, $http) {
	    $http.post("/mybaits/user/datas.htm")
	    .then(function (result) {
	        $scope.names = result.data;
	    });
	});
</script>
</body>
</html>

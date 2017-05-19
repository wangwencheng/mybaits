<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/include_taglib.jsp"%>
<form class="form-horizontal" id="userForm" method="post">
<div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
   <h4 class="modal-title" id="myModalLabel">${user.uid==null?'新建用户':'修改用户'}</h4>
</div>
<input type="hidden" name="uid" value="${user.uid}" >
<div class="modal-body">
		<div id="rootwizard">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">用户名称</label>
				<div class="col-sm-8">
					<input type="text" name="userName" class="form-control"
						value="${user.username }" placeholder="用户名称">
				</div>
			</div>
			<c:if test="${empty user}">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">用户密码</label>
					<div class="col-sm-8">
						<input type="password" name="password" class="form-control"
							placeholder="用户密码">
					</div>
				</div>
			</c:if>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">年龄</label>
				<div class="col-sm-8">
					<input type="text" name="age" class="form-control"
						value="${user.age }" placeholder="手机号码">
				</div>
			</div>
			<div class="form-group">
				<div style="float:right">
					<input type='button' id="finish" class='btn btn-info' name='next'
						value='提交' onclick="javascript:user.xsaveOrUpdate();" />
				</div>
			</div>
		</div>
	</div>
		    </div>
		</div>
</form>
<script type="text/javascript">
    var  roleValue=[];
	$('#userForm').bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
	        valid: 'glyphicon glyphicon-ok',
	        invalid: 'glyphicon glyphicon-remove',
	        validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	    	userName: {
	            validators: {
	            	stringLength: {
						min:2,	            		
	                    max: 20,
	                    message: dz_validatorMap.userName.messageLen
	                },
	                notEmpty: {
	                    message: dz_validatorMap.userName.noEmptyMessage
	                },
	                regexp: {
	                	regexp: dz_validatorMap.userName.regexp,
                        message: dz_validatorMap.userName.regexpMessage
                    }
	            }
	        },
	        password: {
	            validators: {
	            	stringLength: {
	            		min: 8,
	            		max: 16,
	                    message: dz_validatorMap.password.messageLen
	                },
	                notEmpty: {
	                    message: dz_validatorMap.password.noEmptyMessage
	                },
	                regexp: {
                        regexp: dz_validatorMap.password.regexp,
                        message: dz_validatorMap.password.regexpMessage
                    }
	                
	            }
	        },
	        name: {
	            validators: {
	            	stringLength: {
	            		min: 2,
	            		max: 28,
	                    message: dz_validatorMap.trueName.messageLen
	                },
	                regexp: {
                        regexp: dz_validatorMap.trueName.regexp,
                        message: dz_validatorMap.trueName.regexpMessage
                    }
	            }
	        },
	        email: {
	            validators: {
	            	stringLength: {
	            		max: 128,
	                    message: dz_validatorMap.email.messageLen
	                },
	                regexp: {
                        regexp: dz_validatorMap.email.regexp,
                        message: dz_validatorMap.email.regexpMessage
                    }
	            }
	        },
	        phone: {
	            validators: {
	            	stringLength: {
	            		min: 11,
	            		max: 11,
	                    message: dz_validatorMap.mobilephone.messageLen
	                },
	                regexp: {
                        regexp: dz_validatorMap.mobilephone.regexp,
                        message: dz_validatorMap.mobilephone.regexpMessage
                    }
	            }
	        }
	    }
	});
</script>

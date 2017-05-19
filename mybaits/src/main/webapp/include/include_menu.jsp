<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style>
	/*.NoRight{cursor:not-allowed;filter:GRAY;color:#999999;}
	#navMenu .l-btn-disabled{cursor:not-allowed;filter:GRAY;color:#999999;}
	#navMenu .l-btn-disabled:hover{background: #FFF}*/
</style>

<a href="javascript:void(0)" id="menu1" class="easyui-menubutton" data-options="menu:'#sub-menu1'">个人服务(P)</a>   
<div id="sub-menu1" style="width:150px;"> 
    <div class="NoRight" id="RIGHT2" data-options="iconCls:'icon-header-mi'" >我的信息</div>   
</div> 
	
<a href="javascript:void(0)" id="menu2" class="easyui-menubutton"  data-options="menu:'#sub-menu2'" >用户管理(U)</a>   
<div id="sub-menu2" style="width:150px;">   
    <div class="NoRight" id="RIGHT4" data-options="iconCls:'icon-header-user'">用户管理</div>   
    <div class="NoRight" id="RIGHT9" data-options="iconCls:'icon-header-org'">角色管理</div> 
    <div class="NoRight" id="RIGHT10" data-options="iconCls:'icon-header-role'">部门管理</div>   
</div> 
	
<a href="javascript:void(0)" id="menu3" class="easyui-menubutton" data-options="menu:'#sub-menu3'">系统管理(S)</a>   
<div id="sub-menu3" style="width:150px;">   
    <div class="NoRight" id="RIGHT12" data-options="iconCls:'icon-header-config'">配置管理</div>   
    <div class="NoRight" id="RIGHT16" data-options="iconCls:'icon-header-log'">日志管理</div>   
</div> 
	
	
<script>

	//alert($("#RIGHT18 .l-btn-left .m-btn-downarrow").html());
	//$("#RIGHT17 .l-btn-left .m-btn-downarrow").removeClass("m-btn-downarrow");
</script>
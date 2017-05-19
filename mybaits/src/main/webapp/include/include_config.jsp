<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%	
	int easyUI_PageSize = 15;
	String easyUI_pageList="[15, 30, 45, 60, 75]";
	
	int easyUI_PageSize2 = 500;
	String easyUI_pageList2="[15, 30, 45, 60, 75,500]";
	String siteUrl=request.getContextPath()+"/";
	//正常的配置
	String easyUI_DataGrid_Paras="nowrap : false,"
		+"fitColumns : true,"
		+"rownumbers : true,"
		+"pagination : true,"
		+"pageNumber : 1,"
		+"pageSize :"+easyUI_PageSize+","
		+"pageList :"+easyUI_pageList+","
		+"checkOnSelect:true,"
		+"fit : true,"
		+"border : false,"
		+"striped : true,"
		+"remoteSort: false";
	//分页大的配置
	String easyUI_DataGrid_Paras2="nowrap : false,"
		+"fitColumns : true,"
		+"rownumbers : true,"
		+"pagination : true,"
		+"pageNumber : 1,"
		+"pageSize :"+easyUI_PageSize2+","
		+"pageList :"+easyUI_pageList2+","
		+"checkOnSelect:true,"
		+"fit : true,"
		+"border : false,"
		+"striped : true,"
		+"remoteSort: false";
		
	//冻结左侧列的配置	
	String easyUI_DataGrid_Paras3="nowrap : false,"
		+"rownumbers : true,"
		+"pagination : true,"
		+"pageNumber : 1,"
		+"pageSize :"+easyUI_PageSize+","
		+"pageList :"+easyUI_pageList+","
		+"checkOnSelect:true,"
		+"fit : true,"
		+"border : false,"
		+"striped : true,"
		+"remoteSort: false";
%>
<script type="text/javascript">
	var test='nowrap : false,';
   //设置提示框默认居右
  $.fn.tooltip.defaults.position = "right"; 
</script>
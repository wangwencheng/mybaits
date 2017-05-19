var dz_validatorMap = {
	roleName : {
		regexp : /^[\w\.\u4e00-\u9fa5]+$/,
		noEmptyMessage : '角色名不能为空',
		messageLen : '角色名长度必须介于2-20个字符',
		regexpMessage : '由汉字、英文字母（不区分大小写）、数字、点或下划线组成'
	},
	roleDesc : {
		messageLen : '角色描述最大为256个字符'
	},
	userName : {
		regexp : /^[\w\.\u4e00-\u9fa5]+$/,
		noEmptyMessage : '用户名称不能为空',
		messageLen : '用户名称长度必须介于2-20个字符',
		regexpMessage : '由汉字、英文字母（不区分大小写）、数字、点或下划线组成'
	},
	password : {
		regexp : /^(?=.*[a-zA-Z])(?=.*\d).{6,}$/,
		noEmptyMessage : '用户密码不能为空',
		messageLen : '用户密码长度必须介于8-16个字符',
		regexpMessage : '密码必须包含字母和数字！'
	},
	repassword : {
		regexp : /^(?=.*[a-zA-Z])(?=.*\d).{6,}$/,
		noEmptyMessage : '确认密码不能为空',
		messageLen : '确认密码长度必须介于8-16个字符',
		regexpMessage : '密码必须包含字母和数字！'
	},
	trueName : {
		regexp : /^[\w\·\.·_\u4e00-\u9fff]+$/,
		noEmptyMessage : '真实姓名不能为空',
		messageLen : '真实姓名长度必须介于2-28个字符',
		regexpMessage : '由汉字、英文字母（不区分大小写）、数字、点或下划线组成'
	},
	mobilephone : {
		regexp : /^(13[0-9]{9})|^(14[57][0-9]{8})|^(15[012356789][0-9]{8})|^(17[01678][0-9]{8})|^(18[0-9]{9})$/,
		noEmptyMessage : '手机号码不能为空',
		messageLen : '手机号码长度为11个字符',
		regexpMessage : '手机号码格式错误！'
	},
	email : {
		regexp : /^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/,
		noEmptyMessage : '邮箱不能为空',
		messageLen : '邮箱最大为128个字符',
		regexpMessage : '邮箱格式错误！'
	},
	url:{
		regexp: /^((ht|f)tps?):\/\/[\w\-]+(\.[\w\-]+)+([\w\-\.,@?^=%&:\/~\+#]*[\w\-\@?^=%&\/~\+#])?$/,
		regexpMessage : '网站地址格式错误！'
	},
	/*采集器校验*/
	collectorName:{
		messageLen:'采集器名称长度必须介于3-32个字符',
		noEmptyMessage:'采集器名称不能为空',
		regexp:/^[\w\.\u4e00-\u9fa5]+$/ ,
		regexpMessage:'采集器名称格式错误！'
	},
	collectorType:{
		noEmptyMessage:'采集类型不能为空'
	},
	collectorDiff:{
		noEmptyMessage:'增量表不能为空'
	},
	collectorDiffSql:{
		messageLen:'增量表检索条件长度不能超过512个字符'
	},
	collectorViewSql:{
		messageLen:'视图表检索条件长度不能超过512个字符'
	},
	collectorView:{
		messageLen: '视图表不能为空'
	},
	collectorUrl:{
		messageLen:'连接URL长度不能超过256个字符',
		noEmptyMessage:'连接URL不能为空'
	},
	/*数据源校验*/
	dbName:{
		messageLen:'数据源名称长度必须介于3-32个字符',
		noEmptyMessage: '数据源名称不能为空',
		regexp:/^[\w\.\u4e00-\u9fa5]+$/,
		regexpMessage:'数据源名称格式错误！'
	},
	dbType:{
		notEmptyMessage:'数据库类型不能为空'
	},
	dbUrl:{
		messageLen:'连接URL长度不能超过256个字符',
		notEmptyMessage:'连接URL不能为空',
	},
	dbUserName:{
		messageLen:'用户名长度不能超过64个字符',
		notEmptyMessage:'用户名不能为空'
		
	},
	dbPassword:{
		messageLen:'密码长度不能超过64个字符',
		notEmptyMessage:'密码不能为空'
		
	}
	
	
	
};
var PM10;var PM25;var SO2;var NO2;var CO ;var O3;var test;
require.config({
	paths : {
		echarts : '/aircheck/assets/plugs/dist'
	}
});

// 使用
require([ 'echarts', 'echarts/chart/line', // 使用折线图就加载line模块，按需加载
'echarts/chart/pie', // 圆饼图 pie
], function(ec) {
	// 基于准备好的dom，初始化echarts图表
	PM10 = ec.init(document.getElementById('PM10'));
	PM25 = ec.init(document.getElementById('PM2.5'));
	SO2 = ec.init(document.getElementById('SO2'));
	NO2 = ec.init(document.getElementById('NO2'));
	CO = ec.init(document.getElementById('CO'));
	O3= ec.init(document.getElementById('O3'));
	$.ajax({
		url : '/aircheck/getEchartData.action',
		type : 'POST',
		dataType : 'json',
		success : function(data) {
			var PM10Option = {
					title : {
						text : 'PM10'
					},
					tooltip : {
						trigger : 'axis'
					},
					legend: {
						 data:['海淀区','丰台区','东城区','石景山区','朝阳区','通州区']
				    },
					xAxis : [ {
						type : 'category',
						boundaryGap : false,
						data : data.data.xAxis
					} ],
					yAxis : [ {
						type : 'value',
					} ],
					series : [{
							    name:'海淀区',
							    type:'line',
							    stack: '总量',
							    areaStyle: {normal: {}},
							    data:data.data.PM10series1
							},
						        {
						            name:'丰台区',
						            type:'line',
						            stack: '总量',
						            areaStyle: {normal: {}},
						            data:data.data.PM10series2
						        }, {
						            name:'东城区',
						            type:'line',
						            stack: '总量',
						            areaStyle: {normal: {}},
						            data:data.data.PM10series3
						        }, {
						            name:'石景山区',
						            type:'line',
						            stack: '总量',
						            areaStyle: {normal: {}},
						            data:data.data.PM10series4
						        },{
						            name:'朝阳区',
						            type:'line',
						            stack: '总量',
						            areaStyle: {normal: {}},
						            data:data.data.PM10series5
						        },
						        {
						            name:'通州区',
						            type:'line',
						            stack: '总量',
						            areaStyle: {normal: {}},
						            data:data.data.PM10series6
						        }],
					
				};
				PM10.setOption(PM10Option);
				var PM25Option = {
						title : {
							text : 'PM2.5 '
						},
						tooltip : {
							trigger : 'axis'
						},
						legend: {
							 data:['海淀区','丰台区','东城区','石景山区','朝阳区','通州区']
					    },
						xAxis : [ {
							type : 'category',
							boundaryGap : false,
							data :data.data.xAxis
						} ],
						yAxis : [ {
							type : 'value',
						} ],
						series : [
							        {
							            name:'海淀区',
							            type:'line',
							            stack: '总量',
							            areaStyle: {normal: {}},
							            data:data.data.PM25series1
							        },
							        {
							            name:'丰台区',
							            type:'line',
							            stack: '总量',
							            areaStyle: {normal: {}},
							            data:data.data.PM25series2
							        }, {
							            name:'东城区',
							            type:'line',
							            stack: '总量',
							            areaStyle: {normal: {}},
							            data:data.data.PM25series3
							        }, {
							            name:'石景山区',
							            type:'line',
							            stack: '总量',
							            areaStyle: {normal: {}},
							            data:data.data.PM25series4
							        },{
							            name:'朝阳区',
							            type:'line',
							            stack: '总量',
							            areaStyle: {normal: {}},
							            data:data.data.PM25series5
							        },
							        {
							            name:'通州区',
							            type:'line',
							            stack: '总量',
							            areaStyle: {normal: {}},
							            data:data.data.PM25series6
							        }],
						
					};
					PM25.setOption(PM25Option);
					var SO25Option = {
							title : {
								text : 'SO2污染 '
							},
							tooltip : {
								trigger : 'axis'
							},
							legend: {
								 data:['海淀区','丰台区','东城区','石景山区','朝阳区','通州区']
						    },
							xAxis : [ {
								type : 'category',
								boundaryGap : false,
								data : data.data.xAxis
							} ],
							yAxis : [ {
								type : 'value',
							} ],
							series : [
								        {
								            name:'海淀区',
								            type:'line',
								            stack: '总量',
								            areaStyle: {normal: {}},
								            data:data.data.SO2series1
								        },
								        {
								            name:'丰台区',
								            type:'line',
								            stack: '总量',
								            areaStyle: {normal: {}},
								            data:data.data.SO2series1
								        }, {
								            name:'东城区',
								            type:'line',
								            stack: '总量',
								            areaStyle: {normal: {}},
								            data:data.data.SO2series3
								        }, {
								            name:'石景山区',
								            type:'line',
								            stack: '总量',
								            areaStyle: {normal: {}},
								            data:data.data.SO2series4
								        },{
								            name:'朝阳区',
								            type:'line',
								            stack: '总量',
								            areaStyle: {normal: {}},
								            data:data.data.SO2series5
								        },
								        {
								            name:'通州区',
								            type:'line',
								            stack: '总量',
								            areaStyle: {normal: {}},
								            data:data.data.SO2series6
								        } ],
							
						};
						SO2.setOption(SO25Option);
						var NO25Option = {
								title : {
									text : 'NO2污染 '
								},
								tooltip : {
									trigger : 'axis'
								},
								legend: {
									 data:['海淀区','丰台区','东城区','石景山区','朝阳区','通州区']
							    },
								xAxis : [ {
									type : 'category',
									boundaryGap : false,
									data :data.data.xAxis
								} ],
								yAxis : [ {
									type : 'value',
								} ],
								series : [
									        {
									            name:'海淀区',
									            type:'line',
									            stack: '总量',
									            areaStyle: {normal: {}},
									            data:data.data.NO2series1
									        },
									        {
									            name:'丰台区',
									            type:'line',
									            stack: '总量',
									            areaStyle: {normal: {}},
									            data:data.data.NO2series2
									        }, {
									            name:'东城区',
									            type:'line',
									            stack: '总量',
									            areaStyle: {normal: {}},
									            data:data.data.NO2series3
									        }, {
									            name:'石景山区',
									            type:'line',
									            stack: '总量',
									            areaStyle: {normal: {}},
									            data:data.data.NO2series4
									        },{
									            name:'朝阳区',
									            type:'line',
									            stack: '总量',
									            areaStyle: {normal: {}},
									            data:data.data.NO2series5
									        },
									        {
									            name:'通州区',
									            type:'line',
									            stack: '总量',
									            areaStyle: {normal: {}},
									            data:data.data.NO2series6
									        }],
								
							};
							NO2.setOption(NO25Option);
							var COOption = {
									title : {
										text : 'CO污染 '
									},
									tooltip : {
										trigger : 'axis'
									},
									legend: {
										 data:['海淀区','丰台区','东城区','石景山区','朝阳区','通州区']
								    },
									xAxis : [ {
										type : 'category',
										boundaryGap : false,
										data : data.data.xAxis
									} ],
									yAxis : [ {
										type : 'value',
									} ],
									series : [
										        {
										            name:'海淀区',
										            type:'line',
										            stack: '总量',
										            areaStyle: {normal: {}},
										            data:data.data.COseries1
										        },
										        {
										            name:'丰台区',
										            type:'line',
										            stack: '总量',
										            areaStyle: {normal: {}},
										            data:data.data.COseries2
										        }, {
										            name:'东城区',
										            type:'line',
										            stack: '总量',
										            areaStyle: {normal: {}},
										            data:data.data.COseries3
										        }, {
										            name:'石景山区',
										            type:'line',
										            stack: '总量',
										            areaStyle: {normal: {}},
										            data:data.data.COseries4
										        },{
										            name:'朝阳区',
										            type:'line',
										            stack: '总量',
										            areaStyle: {normal: {}},
										            data:data.data.COseries5
										        },
										        {
										            name:'通州区',
										            type:'line',
										            stack: '总量',
										            areaStyle: {normal: {}},
										            data:data.data.COseries6
										        }],
									
								};
								CO.setOption(COOption);
								var O3Option = {
										title : {
											text : 'O3污染'
										},
										tooltip : {
											trigger : 'axis'
										},
										legend: {
											 data:['海淀区','丰台区','东城区','石景山区','朝阳区','通州区']
									    },
										xAxis : [ {
											type : 'category',
											boundaryGap : false,
											data : data.data.xAxis
										} ],
										yAxis : [ {
											type : 'value',
										} ],
										series : [
											        {
											            name:'海淀区',
											            type:'line',
											            stack: '总量',
											            areaStyle: {normal: {}},
											            data:data.data.O3series1
											        },
											        {
											            name:'丰台区',
											            type:'line',
											            stack: '总量',
											            areaStyle: {normal: {}},
											            data:data.data.O3series2
											        }, {
											            name:'东城区',
											            type:'line',
											            stack: '总量',
											            areaStyle: {normal: {}},
											            data:data.data.O3series3
											        }, {
											            name:'石景山区',
											            type:'line',
											            stack: '总量',
											            areaStyle: {normal: {}},
											            data:data.data.O3series4
											        },{
											            name:'朝阳区',
											            type:'line',
											            stack: '总量',
											            areaStyle: {normal: {}},
											            data:data.data.O3series5
											        },
											        {
											            name:'通州区',
											            type:'line',
											            stack: '总量',
											            areaStyle: {normal: {}},
											            data:data.data.O3series6
											        }],
									};
								O3.setOption(O3Option);
		}
	    });
		});
window.setInterval(function () {
    var data = [];
   $.post("/aircheck/getEchartData.action",function(responseTxt,statusTxt,xhr)
   {
    test=responseTxt;
    if (statusTxt == "error")
            alert("Error: " + xhr.status + ": " + xhr.statusText);
   });
    data = test;
    refreshData(test);       
},3000);
function refreshData(data){
    //更新数据
	var PM10Option = PM10.getOption();
	var PM25Option = PM25.getOption();
	var SO2Option =  SO2.getOption();
	var NO2Option =  NO2.getOption();
	var COOption =   CO.getOption();
	var O3Option=    O3.getOption();
	PM10Option.series[0].data =JSON.parse(data).data.PM10series1;
	PM10Option.series[1].data = JSON.parse(data).data.PM10series2; 
	PM10Option.series[2].data = JSON.parse(data).data.PM10series3; 
	PM10Option.series[3].data = JSON.parse(data).data.PM10series4; 
	PM10Option.series[4].data = JSON.parse(data).data.PM10series5; 
	PM10Option.series[5].data = JSON.parse(data).data.PM10series6; 
	PM25Option.series[0].data = JSON.parse(data).data.PM25series1;
	PM25Option.series[1].data = JSON.parse(data).data.PM25series2;
	PM25Option.series[2].data = JSON.parse(data).data.PM25series3;
	PM25Option.series[3].data = JSON.parse(data).data.PM25series4;
	PM25Option.series[4].data = JSON.parse(data).data.PM25series5;
	PM25Option.series[5].data = JSON.parse(data).data.PM25series6;
	SO2Option.series[0].data = JSON.parse(data).data.SO2series1;
	SO2Option.series[1].data = JSON.parse(data).data.SO2series2;
	SO2Option.series[2].data = JSON.parse(data).data.SO2series3;
	SO2Option.series[3].data = JSON.parse(data).data.SO2series4;
	SO2Option.series[4].data = JSON.parse(data).data.SO2series5;
	SO2Option.series[5].data = JSON.parse(data).data.SO2series6;
	NO2Option.series[0].data = JSON.parse(data).data.PM25series1;
	NO2Option.series[1].data = JSON.parse(data).data.PM25series2; 
	NO2Option.series[2].data = JSON.parse(data).data.PM25series3;
	NO2Option.series[3].data = JSON.parse(data).data.PM25series4; 
	NO2Option.series[4].data = JSON.parse(data).data.PM25series5; 
	NO2Option.series[5].data = JSON.parse(data).data.PM25series6; 
	COOption.series[0].data = JSON.parse(data).data.PM25series1;
	COOption.series[1].data = JSON.parse(data).data.PM25series2; 
	COOption.series[2].data = JSON.parse(data).data.PM25series3; 
	COOption.series[3].data = JSON.parse(data).data.PM25series4; 
	COOption.series[4].data = JSON.parse(data).data.PM25series5; 
	COOption.series[5].data = JSON.parse(data).data.PM25series5; 
	O3Option.series[0].data = JSON.parse(data).data.PM25series1;
	O3Option.series[1].data = JSON.parse(data).data.PM25series2;
	O3Option.series[2].data = JSON.parse(data).data.PM25series3;
	O3Option.series[3].data = JSON.parse(data).data.PM25series4;
	O3Option.series[4].data = JSON.parse(data).data.PM25series5;
	O3Option.series[5].data = JSON.parse(data).data.PM25series6;
	PM10.setOption(PM10Option);
	PM25.setOption(PM25Option);
	SO2.setOption(SO2Option);
	NO2.setOption(NO2Option);
	CO.setOption(COOption);
	O3.setOption(O3Option);
}
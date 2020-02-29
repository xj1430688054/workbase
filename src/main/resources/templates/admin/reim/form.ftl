<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 表单验证 </title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="${ctx!}/assets/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${ctx!}/assets/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${ctx!}/assets/css/animate.css" rel="stylesheet">
    <link href="${ctx!}/assets/css/style.css?v=4.1.0" rel="stylesheet">
             
	<link href="${ctx!}/assets/css/bootstrap.min.css" rel="stylesheet" />
	
	
    

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        
                    </div>
                    <div class="ibox-content">
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>报销</h5>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="frm" method="post" action="${ctx!}/admin/reim/edit">
                        	<input type="hidden" id="id" name="id" value="${reim.id}">
               
                            <div class="form-group">
                                <label class="col-sm-3 control-label">报销金额：</label>
                                <div class="col-sm-8">
                                    <input id="name" name="name" class="form-control" type="text" value="${reim.name}">
                                </div>
                            </div>
                            
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">报销图片：</label>
                                <div class="col-sm-8">
                                      <img alt="image" class="img-responsive" src="/${reim.url}">
                                      <button type="button" class="btn btn-primary center-block" data-toggle="modal" data-target="#exampleModal">修改图片</button>
                                      
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">资源类型：</label>
                                <div class="col-sm-8">
                                	<select name="type" class="form-control">
                                		<option value="0" <#if reim.type == 0>selected="selected"</#if>>目录</option>
                                		<option value="1" <#if reim.type == 1>selected="selected"</#if>>菜单</option>
                                		<option value="2" <#if reim.type == 2>selected="selected"</#if>>按钮</option>
                                	</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">资源url：</label>
                                <div class="col-sm-8">
                                    <input id="sourceUrl" name="sourceUrl" class="form-control" value="${reim.sourceUrl}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">层级：</label>
                                <div class="col-sm-8">
                                    <input id="level" name="level" class="form-control" value="${reim.level}" placeholder="目录：1，菜单：2，按钮：3">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">排序：</label>
                                <div class="col-sm-8">
                                    <input id="sort" name="sort" class="form-control" value="${reim.sort}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">图标：</label>
                                <div class="col-sm-8">
                                    <input id="icon" name="icon" class="form-control" value="${reim.icon}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">状态：</label>
                                <div class="col-sm-8">
                                	<select name="isHide" class="form-control">
                                		<option value="0" <#if reim.locked == 0>selected="selected"</#if>>显示</option>
                                		<option value="1" <#if reim.locked == 1>selected="selected"</#if>>隐藏</option>
                                	</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">描述：</label>
                                <div class="col-sm-8">
                                    <input id="description" name="description" class="form-control" value="${reim.description}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <!-- 全局js -->
    <script src="${ctx!}/assets/js/jquery.min.js?v=2.1.4"></script>
    <script src="${ctx!}/assets/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="${ctx!}/assets/js/content.js?v=1.0.0"></script>
    <#--<script src="${ctx!}/assets/js/initFileInput.js"></script>-->
    <#--<script src="${ctx!}/assets/js/theme.js"></script>-->
    <#--<script src="${ctx!}/assets/js/zh.js"></script>-->

    <!-- jQuery Validation plugin javascript-->
    <script src="${ctx!}/assets/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/validate/messages_zh.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/layer/layer.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/layer/laydate/laydate.js"></script>
    <script src="${ctx!}/assets/js/fileinput.min.js"></script>           
    <script src="${ctx!}/assets/js/locales/zh.js"></script>    
    <script type="text/javascript">
    $(document).ready(function () {
	  	
	    $("#frm").validate({
    	    rules: {
    	    	name: {
    	        required: true,
    	        minlength: 4,
    	    	maxlength: 20
    	      },
    	      	sourceKey: {
    	        required: true,
    	        minlength: 4,
    	    	maxlength: 40
    	      },
    	      	type: {
    	        required: true
    	      },
    	      	sourceUrl: {
    	        required: true
    	      },
    	      	level: {
    	        required: true,
    	        number:true
    	      },
    	      	sort: {
    	      	number:true,
    	        required: true
    	      },
    	      	icon: {
    	        maxlength: 40
    	      },
    	      	isHide: {
    	        required: true
    	      },
    	      	description: {
    	        required: true,
    	        maxlength: 40
    	      }
    	    },
    	    messages: {},
    	    submitHandler:function(form){
    	    	$.ajax({
   	    		   type: "POST",
   	    		   dataType: "json",
   	    		   url: "${ctx!}/admin/reim/edit",
   	    		   data: $(form).serialize(),
   	    		   success: function(msg){
	   	    			layer.msg(msg.message, {time: 2000},function(){
	   						var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
	   						parent.layer.close(index); 
	   					});
   	    		   }
   	    		});
            } 
    	});
    });
    </script>

</body>

</html>

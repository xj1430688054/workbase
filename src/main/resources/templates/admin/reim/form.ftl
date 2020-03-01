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
	<link href="${ctx!}/assets/css/fileinput.min.css" rel="stylesheet" />
	
	
    

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
                                <label class="col-sm-3 control-label">报销图片：</label>
                                <div class="col-sm-8">
                                      <img alt="image" class="img-responsive" src="/${reim.url}">
                                      
                                      <input type="hidden" id="url" name="url" value="${reim.url}">
                                      
                                      	<#if !reim.id??>
                                      <button type="button" class="btn btn-primary center-block" data-toggle="modal" data-target="#exampleModal">上传图片</button>
                          				</#if>
                                </div>
                            </div>
                        	
                        	<#if !reim.id??>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">报销名称：</label>
                                <div class="col-sm-8">
                                    <input id="name" name="name" class="form-control" type="text" value="${reim.name}" >
                                </div>
                            </div>
                        	</#if>
                        
                        	<#if reim.id??>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">报销名称：</label>
                                <div class="col-sm-8">
                                    <input id="name" name="name" class="form-control" type="text" value="${reim.name}" readonly="readonly">
                                </div>
                            </div>
             				</#if>
                        	
                        	
               
               				<#if !reim.id??>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">报销金额：</label>
                                <div class="col-sm-8">
                                    <input id="amount" name="amount" class="form-control" type="text" value="${reim.amount}">
                                </div>
                            </div>
                            </#if>
                            
                            <#if reim.id??>
                             <div class="form-group">
                                <label class="col-sm-3 control-label">审批状态：</label>
                                <div class="col-sm-8">
                                    <select name="status" class="form-control" >
  												<option value="1" >同意</option>
  												<option value="2" >不同意</option>
										</select>
                                </div>
                            </div>
                            </#if>
                            
 
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
    <script src="${ctx!}/assets/js/fileinput.min.js"></script>           

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
    <script src="${ctx!}/assets/js/locales/zh.js"></script>    
    <script type="text/javascript">
    $(document).ready(function () {
	  	
	    $("#frm").validate({
    	    rules: {
    	    	name: {
    	        required: true,
    	        minlength: 1,
    	    	maxlength: 20
    	      	
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

                    <!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						    <div class="modal-dialog modal-lg" role="document">
						        <div class="modal-content">
						            <div class="modal-header">
						                <h5 class="modal-title" id="exampleModalLabel">上传文件</h5>
						                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						                    <span aria-hidden="true">&times;</span>
						                </button>
						            </div>
						            <div class="modal-body">
						                <form enctype="multipart/form-data" method="post" action="${ctx!}/admin/reim/upload">
						                    <div class="form-group center-block" style="width: 600px;" >
						                        <input id="modelInput" name="file" type="file" class="file" data-browse-on-zone-click="true">
						                        <input type="hidden" id="id" name="id" value="${reim.id}">
						                    </div>
						                </form>
						                <div id="kartik-file-errors"></div>
						            </div>
						            <div class="modal-footer">
						                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
						               <!-- <button type="button" class="btn btn-primary" title="Your custom upload logic">保存</button>-->
						            </div>
						        </div>
						    </div>
</div>

</html>

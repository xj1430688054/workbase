<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="${ctx!}/assets/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${ctx!}/assets/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${ctx!}/assets/css/animate.css" rel="stylesheet">
    <link href="${ctx!}/assets/css/style.css?v=4.1.0" rel="stylesheet">
    
    <link href="${ctx!}/assets/css/fileinput.min.css" rel="stylesheet" />
</head>
<body>
 <div class="ibox-content">
	<form class="form-horizontal m-t" id="frm" method="post" action="${ctx!}/admin/user/edit">
                        	<input type="hidden" id="id" name="id" value="${user.id}">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">账户名：</label>
                                <div class="col-sm-8">
                                    <input id="userName" name="userName" class="form-control" type="text" value="${user.userName}" <#if user?exists> readonly="readonly"</#if> >
                                </div>
                            </div>
                                   <div class="form-group">
                                <label class="col-sm-3 control-label">头像：</label>
                                <div class="col-sm-8">
                                      <img alt="image" class="img-responsive" width="200" height="200" src="/${user.url}">
                                      
                                      <input type="hidden" id="url" name="url" value="${user.url}">
                                      
                                      <#if isown == "true">
                                      <button type="button" class="btn btn-primary center-block" data-toggle="modal" data-target="#exampleModal">上传图片(更换头像)</button>
                                      </#if>
                                      
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">昵称：</label>
                                <div class="col-sm-8">
                                    <input id="nickName" name="nickName" class="form-control" type="text" value="${user.nickName}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">性别：</label>
                                <div class="col-sm-8">
                                	<select name="sex" class="form-control">
                                		<option value="0" <#if user.sex == 0>selected="selected"</#if>>女</option>
                                		<option value="1" <#if user.sex == 1>selected="selected"</#if>>男</option>
                                	</select>
                                </div>
                            </div>
                            <#if !user?exists>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">出生日期：</label>
                                <div class="col-sm-8">
                                    <input id="birthday" name="birthday" readonly="readonly" class="laydate-icon form-control layer-date" value="${user.birthday}">
                                </div>
                            </div>
                            </#if>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">电话：</label>
                                <div class="col-sm-8">
                                    <input id="telephone" name="telephone" class="form-control" value="${user.telephone}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">E-mail：</label>
                                <div class="col-sm-8">
                                    <input id="email" name="email" class="form-control" value="${user.email}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">地址：</label>
                                <div class="col-sm-8">
                                    <input id="address" name="address" class="form-control" value="${user.address}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">状态：</label>
                                <div class="col-sm-8">
                                	<select name="locked" class="form-control">
                                		<option value="0" <#if user.locked == 0>selected="selected"</#if>>未锁定</option>
                                		<option value="1" <#if user.locked == 1>selected="selected"</#if>>锁定</option>
                                	</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">描述：</label>
                                <div class="col-sm-8">
                                    <input id="description" name="description" class="form-control" value="${user.description}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                 <#if isown == "true">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                    </#if>
                                </div>
                            </div>
                            

                            
      
                            
                        </form>
                
                          </div>
                        
                            <!-- 全局js -->
    <script src="${ctx!}/assets/js/jquery.min.js?v=2.1.4"></script>
    <script src="${ctx!}/assets/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${ctx!}/assets/js/fileinput.min.js"></script> 

    <!-- 自定义js -->
    <script src="${ctx!}/assets/js/content.js?v=1.0.0"></script>

    <!-- jQuery Validation plugin javascript-->
    <script src="${ctx!}/assets/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/validate/messages_zh.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/layer/layer.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/layer/laydate/laydate.js"></script>
    <script src="${ctx!}/assets/js/locales/zh.js"></script>  
 
    
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
						                <form enctype="multipart/form-data" method="post" action="${ctx!}/admin/user/upload">
						                    <div class="form-group center-block" style="width: 600px;" >
						                        <input id="modelInput" name="file" type="file" class="file" data-browse-on-zone-click="true">
						                        <input type="hidden" id="id" name="id" value="${user.id}">
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
</html>
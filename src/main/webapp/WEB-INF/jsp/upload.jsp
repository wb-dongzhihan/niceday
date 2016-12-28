<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="/resources/js/jquery-1.7.2.js"></script>

<title>Insert title here</title>
<script type="text/javascript">  
    i = 1;  
    j = 1;  
    $(document).ready(function(){  
          
        $("#btn_add1").click(function(){  
            document.getElementById("newUpload1").innerHTML+='<div id="div_'+i+'"><input  name="file" type="file"  /><input type="button" value="删除"  onclick="del_1('+i+')"/></div>';  
              i = i + 1;  
        });  
          
        $("#btn_add2").click(function(){  
            document.getElementById("newUpload2").innerHTML+='<div id="div_'+j+'"><input  name="file_'+j+'" type="file"  /><input type="button" value="删除"  onclick="del_2('+j+')"/></div>';  
              j = j + 1;  
        });  
    });  
  
    function del_1(o){  
     document.getElementById("newUpload1").removeChild(document.getElementById("div_"+o));  
    }  
      
    function del_2(o){  
         document.getElementById("newUpload2").removeChild(document.getElementById("div_"+o));  
    }  
    
    
    var CHARS = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.split('');

    
	var submitForm = function(url, params) {
		var tempForm = $('<form></form>');
		// 设置属性
		tempForm.attr('action', url);
		tempForm.attr('method', 'post');
		var id = uuid();
		tempForm.attr('id', id);
		tempForm.attr('target', "iframe");
		tempForm.css('display', 'none')
		for ( var x in params) {
			var input = $("<input type='hidden' name='{0}' />".format(x));
			input.attr('value', params[x]);
			tempForm.append(input);
		}
		var iid = uuid();
		var iframe = $('<iframe name="iframe"></iframe>');
		
		iframe.attr('id',iid)
		iframe.css('display', 'none');
		// iframe.append(tempForm);
		iframe.appendTo("body");
		tempForm.appendTo("body");
		tempForm.submit();
		alert("下载图片开始")
		setTimeout(1000, function() {
			$("#" + id).remove();
			$("#" + iid).remove();
		});
	};
	
	
	
	 var  uuid = function (len, radix) {
	        var chars = CHARS, uuid = [];
	        radix = radix || chars.length;
	        len = len || 10;
	        for (var i = 0; i < len; i++) {
	            uuid[i] = chars[0 | Math.random() * radix];
	        }
	        return uuid.join('');
	    };
    
    
    
    
    
    
  
</script>
</head>
<body>
<button onclick="submitForm('https://cdog01.alibaba-inc.com/aliwork/tfscom/TB1.pA3KpXXXXavXXXXXXXXXXXX.tfsprivate_80x80')">点击下载</button>

	<h1>springMVC字节流输入上传文件</h1>
	<form name="userForm1" action="/file/upload"
		enctype="multipart/form-data" method="post">
		<div id="newUpload1">
			<input type="file" name="file">
		</div>

		<input type="button" id="btn_add1" value="增加一行"> <input
			type="submit" value="上传">
	</form>
	<br>
	<br>
	<hr align="left" width="60%" color="#FF0000" size="3">
	<br>
	<br>
	<h1>springMVC包装类上传文件</h1>
	<form name="userForm2" action="/file/upload2"
		enctype="multipart/form-data" method="post"">
		<div id="newUpload2">
			<input type="file" name="file">
		</div>
		<input type="button" id="btn_add2" value="增加一行"> <input
			type="submit" value="上传">


	</form>
</body>
</html>

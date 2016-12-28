<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>通过js保存图片到本地</title>
<meta name="Generator" content="EditPlus">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<script type="text/javascript" src="/resources/js/jquery-1.7.2.js"></script>


<script type="text/javascript">
	function downloadFile(fileName, content) {
		alert(111)
		var aLink = document.createElement('a');
		var blob = new Blob([ content ]);
		var evt = document.createEvent("HTMLEvents");
		evt.initEvent("click", false, false);//initEvent 不加后两个参数在FF下会报错, 感谢 Barret Lee 的反馈
		aLink.download = fileName;
		aLink.href = URL.createObjectURL(blob);
		aLink.dispatchEvent(evt);
		alert(fileName)

	}
</script>

</head>


<body>
	<input type="button" value="download image"
		onclick='downloadFile("Koala.jpg","http://work.alibaba-inc.com/photo/79502.80x80.jpg")'>
		
		<a href="/resources/images/Koala.jpg" download="">点击下载图片</a>
		
</body>
</html>

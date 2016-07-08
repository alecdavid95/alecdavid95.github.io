<!DOCTYPE HTML><%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Hello World</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="index.css"/>
</head>
<body onLoad="switchImage('slideImg')">
<div><img src = "http://f4.bcbits.com/img/0003924538_100.png" style = "width:1200px" id = "image1"/></div>
<div id = "header">
<a id = "music" href = "index.jsp">Home</a>
<a id = "music" href = "Music.html">Music</a>
<a id = "music" href = "Store.html">News</a>
<a id = "music" href = "Shows.html">Shows</a>
<a id = "music" href = "New.html">Upcoming</a>
</div>
<div class = "banner">
<h1 class = "text">Good <% if (new GregorianCalendar().get(Calendar.HOUR_OF_DAY) < 12) {%><br />Morning<br /><% } else { %><br />Afternoon<br /><% } %></h1>
<h2 style = "font-family: Impact" class = "text">Welcome to Face Value</h2>
</div>
<div id = "all">
<div id = "table">
<table>
	<tbody>
	<tr><td><img src = "http://f4.bcbits.com/img/0007343523_10.jpg" style = "width: 400px"/></td></tr>
	<tr><td><img src = "images/pic2.jpg" style = "width: 400px"/></td></tr>
	<tr><td><img src = "images/pic3.jpg" style = "width: 400px"/></td></tr>
	</tbody>
</table>
</div>
<div class = "right">
<iframe style="border:0;" width="460" height = "259" src="https://www.youtube.com/embed/rbrX9bFToEU" class = "vid"></iframe>
<iframe style="border:0;" width="460" height = "259" src="https://www.youtube.com/embed/P0hsPGi4jDI" class = "vid"></iframe>
<iframe style="border:0;" width="460" height="259" src="https://www.youtube.com/embed/9aTsg9kH8Eo" class = "vid"></iframe>
</div>
</div>
<script>
var interval = 1500;
var random_display = 0;
var imageDir = "images/";

var imageNum = 0;
imageArray = new Array();
imageArray[imageNum++] = new imageItem(imageDir + "head1.jpg" )
imageArray[imageNum++] = new imageItem(imageDir + "head2.jpg" )
imageArray[imageNum++] = new imageItem(imageDir + "head3.jpg" )
imageArray[imageNum++] = new imageItem(imageDir + "head4.jpg" )
var totalImages = imageArray.length;

function imageItem(image_location) {
	this.image_item = new Image();
	this.image_item.src = image_location;
}

function get_ImageItemLocation(imageObj) {
	return(imageObj.image_item.src)
}

function randNum(x, y) {
	var range = y - x + 1;
	return Math.floor(Math.random() * range) + x;
}

function getNextImage() {
	if (random_display){
		imageNum = randNum(0, totalImages - 1)
	}
	else {
		imageNum = (imageNum + 1) % totalImages;
	}

	var new_image = get_ImageItemLocation(imageArray[imageNum]);
	return(new_image);
}

function getPrevImage() {
	imageNum = (image - 1) % totalImages;
	var new_image = get_ImageItemLocation(imageArray[imageNum])
	retunr(new_image);
}

function prevImage(place) {
    var new_image = getPrevImage();
    document[place].src = new_image;
}

function switchImage(place) {
    var new_image = getNextImage();
    document[place].src = new_image;
    var recur_call = "switchImage('"+place+"')";
    timerID = setTimeout(recur_call, interval);
}
</script>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<script>(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.src="//x.instagramfollowbutton.com/follow.js";s.parentNode.insertBefore(g,s);}(document,"script"));</script>>
<div id = "bottomwrapper">
<div id = "footer">
<img id = "slide" name="slideImg" width=500 height=375 border=0>
</div>
<div id = "linkers">
	<ul>
		<li><img src = "http://www.crownlanestudio.co.uk/wp-content/uploads/2015/07/Spotify-listen-button-300x90.jpg"/></li>
		<li><a href ="https://geo.itunes.apple.com/us/album/thick-as-thieves-ep/id1114060043?mt=1&app=music"><img src = "http://kadavy.wpengine.netdna-cdn.com/wp-content/uploads/2016/04/button-apple-itunes.png"/></a></li>
	</ul>
	<ul id = "social">
	<li><div class="fb-follow" data-href="https://www.facebook.com/wearefacevalue" data-layout="standard" data-show-faces="true"></div></li>
	<li><span class="ig-follow" data-id="5479dee" data-handle="igfbdotcom" data-count="true" data-size="large" data-username="true"></span></li>
	<li><a href="https://www.reverbnation.com/WeAreFaceValue"><img src="https://gp1.wac.edgecastcdn.net/802892/production_static/20160628152655/images/my_links_badges/mylinks_profile_page.png" alt="Mylinks profile page" /></a></li>
	</ul>
</div>
</div>
</body>
</html>
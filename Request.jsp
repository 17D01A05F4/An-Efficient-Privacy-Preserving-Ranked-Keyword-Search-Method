<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> User </title>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 24}
.style3 {font-size: 26px; }
.style4 {
	font-size: 24;
	font-weight: bold;
	color: #666666;
}
.style8 {font-size: 18px}
.style9 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our site:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"></li>
          <li class="style1">
           <div align="left"><a href="User.html"><span>USER</span></a></div>
		  <li><a href="Register.html"><span>REGISTER</span></a></li>
		  <li><a href="DataOwner.html"><span>DATA OWNER</span></a></li>
		  <li><a href="CloudServer.html"><span>CLOUD SERVER</span></a></li>
          <li><a href="About.html"><span>ABOUT SYSTEM</span></a></li>
          </li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
       <h1><span class="style9"><a href="index.html" class="style5 style6">An Efficient Privacy-Preserving Ranked Keyword Search Method</a></span></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /></a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="article">
            <h2><span>Request Permission </span> :: </h2>
            <%
		  try 
	{
	Statement st=connection.createStatement();
	String user = (String) application.getAttribute("name");
	String per="No";
	
	String query="select * from request where user='"+user+"'"; 
	ResultSet rs=st.executeQuery(query);
	if (rs.next()==true)
	   {
	   		%>
            <ol>
              <li><br />
                  <div class="clr style8"></div>
              </li>
              <li class="style8">Request Already Sent. Please Wait For Approval !!!</li>
            </ol>
            <p>&nbsp;</p>
            <ol>
              <li><a href="UserMain.html">BACK</a></li>
            </ol>
          </div>
          <%
		
	   }else
	   {
	   
			st.executeUpdate("insert into  request(user,search,download,ownerper) values ('"+user+"','"+per+"','"+per+"','"+per+"')"); 
      	%>
          <ol>
            <li><br />
                <div class="clr style8"></div>
            </li>
            <li class="style8">Request Sent Successfully !!! </li>
          </ol>
          <p>&nbsp;</p>
          <ol>
            <li><a href="UserMain.html">BACK</a></li>
          </ol>
          <%		
			}	
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
<h2>&nbsp;</h2>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User Menu</span></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
			<li><a href="Request.jsp">REQUEST PERMISSION </a></li>
            <li><a href="Download.jsp">DOWNLOAD FILE </a></li>
			<li><a href="Search.jsp">SEARCH DATA </a></li>
            <li><a href="Topk.jsp">TOP K DOCUMENT</a></li>
			<li><a href="index.html">LOG OUT</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
      </div>
      <div class="col c3">
        <h2 class="style3">&nbsp;</h2>
        <p class="contact_info style2">&nbsp;</p>
      </div>
      <div class="clr style2"></div>
    </div>
  </div>
  <div class="footer style2">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center class="style2"></div>
</body>
</html>
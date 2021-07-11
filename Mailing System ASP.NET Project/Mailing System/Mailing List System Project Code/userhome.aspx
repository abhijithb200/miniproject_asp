<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="userhome" Title="Home" %>
<link rel="stylesheet" type="text/css" href="css/userhomestyle.css" />
<div class="container">
    <div id="header">
				
            <div id="title"><span id="top">Mailing List System</span> <br />
             </div>
				<div id="navcontainer">
            <ul id="navlist">
              <li id="active"><a href="userhome.aspx" id="current" >Home</a></li>
              <li><a href="viewprofile.aspx">Edit Profile</a></li>
              <li><a href="Feedback.aspx"  >FeedBack</a></li>
              <li><a href="profileposting.aspx" >Profile Posting</a></li>
            </ul>
		 		</div>			
			</div>	
    <div class="body" style="background-image:url(images/userbg.jpg)">
       
    </div>
     <h2 class="hello">Hello,<br />    <asp:Label runat="server" Text="Abhijith b" CssClass="name" ID="labelname"></asp:Label>
     </h2>
    <div style="min-width: 100%;
    margin: 0px auto;
    text-align: center;padding-top:40px;">
        <h2 class="name" style="font-size:40px;">Welcome to mailing system.</h2>
        <img src="/images/homedemo.gif" />
 <div class="myprogress">
  <div class="circle">
    <span class="title">Register with your email</span>
  </div>
  <span class="bar done"></span>
  <div class="circle">
    <span class="title">Post your profile</span>
  </div>
     <span class="bar half"></span>
  <div class="circle">
    <span class="title">Check your email</span>
  </div>
  <span class="bar half"></span>
  <div class="circle">
    <span class="title">Wait for our reply</span>
  </div>
  
 
</div>
    </div>
    
</div>


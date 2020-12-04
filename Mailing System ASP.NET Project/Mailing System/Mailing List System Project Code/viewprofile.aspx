<%@ Page Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="viewprofile.aspx.cs" Inherits="viewprofile" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:white;border-radius:70px; height: 521px; width: 1002px; margin-left:99px; margin-bottom:100px;margin-top:100px;position:relative; top: 0px; left: 117px;">
        <img src="images/profile.png" style="width: 399px; height: 300px;margin-top:123px;margin-left:49px;" />
    <div style="background-color:
    #6995BE; width: 500px; position:absolute; top: 0px; right: 0;bottom:0;box-shadow: -2px 3px 50px -8px rgba(0,0,0,1);">
        
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="50px" Font-Underline="False"
         Height="47px" Style="z-index: 101; left: 186px; vertical-align: middle;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; position: absolute; top: 51px; text-align: left;color:white;font-weight:100"
        Text="Profile" Width="90px"></asp:Label>
    <asp:Label ID="lblname" runat="server" Font-Size="Small" Style="font-weight: bold;
        z-index: 102; left: 276px; color: white; font-style: italic; position: absolute;
        top: 144px; height: 19px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="username" Width="101px"></asp:Label>
    <asp:Label ID="lblpassword" runat="server" Font-Size="Small" Height="15px" Style="font-weight: bold;
        z-index: 103; left: 277px; color: white; font-style: italic; position: absolute;
        top: 186px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="password" Width="101px"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="z-index: 104; left: 133px; position: absolute;
        top: 188px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="Password :"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 105; left: 137px; position: absolute;
        top: 228px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="Lastname :"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 106; left: 150px; position: absolute;
        top: 270px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px; width: 104px; right: 229px; height: 29px;" Text="Email ID :"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 107; left: 106px; position: absolute;
        top: 313px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="Date of Birth :"></asp:Label>
    <asp:Label ID="lbldob" runat="server" Font-Size="Small" Style="font-weight: bold;
        z-index: 109; left: 286px; color: white; font-style: italic; position: absolute;
        top: 310px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px; height: 35px;" Text=" DOB " Width="101px"></asp:Label>
    <asp:Label ID="lblmailid" runat="server" Font-Size="Small" Style="font-weight: bold;
        z-index: 110; left: 281px; color: white; font-style: italic; position: absolute;
        top: 268px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="emailid" Width="101px"></asp:Label>
    <asp:Label ID="lblsurname" runat="server" Font-Size="Small" Style="font-weight: bold;
        z-index: 111; left: 280px; color: white; font-style: italic; position: absolute;
        top: 228px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="surname" Width="101px"></asp:Label>
    <asp:LinkButton ID="lbtnprofile" runat="server" OnClick="lbtnprofile_Click" Style="z-index: 100;
        left: 295px; position: absolute; top: 383px; height: 19px;color:white">Edit Profile</asp:LinkButton>
    <asp:Label ID="Label7" runat="server" Style="z-index: 106; left: 120px; position: absolute;
        top: 144px; height: 19px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="UserName :"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        </div>
        
        </div>
</asp:Content>


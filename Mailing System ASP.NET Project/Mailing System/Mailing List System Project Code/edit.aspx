<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:white;border-radius:70px; height: 521px; width: 1002px; margin-left:99px; margin-bottom:100px;margin-top:100px;position:relative; top: 0px; left: 117px;">
        <img src="images/editprofile.png" style="width: 399px; height: 300px;margin-top:123px;margin-left:49px;" />
        <div style="background-color:
    #6995BE; width: 500px; position:absolute; top: 0px; right: 0;bottom:0;box-shadow: -2px 3px 50px -8px rgba(0,0,0,1);">
        <asp:Label ID="lblname" runat="server" Font-Size="Small" Style="z-index: 106; left: 73px; position: absolute;
        top: 144px; height: 19px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="username" Width="101px"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Size="Small" Style="z-index: 104; left: 85px; position: absolute;
        top: 188px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="Password" Width="101px"></asp:Label>
        <asp:Label ID="lbldob" runat="server" Font-Size="Small" Style="z-index: 107; left: 105px; position: absolute;
        top: 313px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px; width: 60px;" Text=" DOB"></asp:Label>
        <asp:TextBox ID="txtmail" runat="server" Style="z-index: 103; left: 237px; position: absolute;
            top: 279px; width: 138px;"></asp:TextBox>
        <asp:TextBox ID="txtdob" runat="server" Style="z-index: 104; left: 242px; position: absolute;
            top: 320px; width: 133px;"></asp:TextBox>
        <asp:TextBox ID="txtuser" runat="server" Style="z-index: 105; left: 239px; position: absolute;
            top: 155px; width: 135px;" OnTextChanged="txtuser_TextChanged"></asp:TextBox>
        <asp:TextBox ID="txtsurname" runat="server" Style="z-index: 106; left: 238px; position: absolute;
            top: 237px; width: 137px;"></asp:TextBox>
        &nbsp;
        <asp:Label ID="lblmailid" runat="server" Font-Size="Small" Style="z-index: 106; left: 96px; position: absolute;
        top: 270px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px; width: 104px; right: 300px; height: 29px;" Text="emailid" Width="101px"></asp:Label>
        <asp:Label ID="lblsurname" runat="server" Font-Size="Small" Style="z-index: 105; left: 87px; position: absolute;
        top: 228px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:25px" Text="surname" Width="101px"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 109;
            left: 334px; position: absolute; top: 435px;padding:5px 10px;" Text="Submit" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="z-index: 113;
            left: 124px; position: absolute; top: 434px;padding:5px 10px;" Text="Home" />
        <asp:TextBox ID="txtpwd" runat="server" Style="z-index: 111; left: 238px; position: absolute;
            top: 198px; width: 137px;"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Style="z-index: 112;
            left: 434px; position: absolute; top: 331px;z-index: 101; left: 186px; vertical-align: middle;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; position: absolute; top: 51px; text-align: left;color:white;font-weight:100; width: 149px;" Text="Edit Profile"></asp:Label>
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


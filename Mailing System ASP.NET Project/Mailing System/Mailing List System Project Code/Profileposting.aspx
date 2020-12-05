<%@ Page Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="Profileposting.aspx.cs" Inherits="userhome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 628px">
        <div style="background-image:url('images/profilebg.jpg'); background-position:center;background-size:contain;height:171px; width:102%">
            <image src="images/picture.png" width="150px" style="position:absolute;left:100px;top:130px"/>
            <asp:Label ID="topemail" runat="server" Style="z-index: 100; left: 264px; position: absolute;
        top: 210px; height: 23px; width: 30px;color:white;font-size:30px" Text="email"></asp:Label>
            <asp:Label ID="topname" runat="server" Style="z-index: 100; left: 261px; position: absolute;
        top: 155px; font-size:50px;color:white;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" Text="Name"></asp:Label>
  
        </div>
         <h1 style="margin-left:300px;margin-top:30px;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;font-size:20px">POST YOUR PROFILE TO GET EMAILS RELATED TO YOUR RESUME. </h1>
    
        <div style="background-color:white;margin-left:50px; width: 1246px; height: 344px;margin-top:30px;border-radius:20px;box-shadow: -2px 3px 50px -8px rgba(0,0,0,1);">
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 469px; position: absolute;
        top: 542px; font-size:25px; height: 32px;" Text="UplaodResume"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 101; left: 693px;
        position: absolute; top: 551px" />
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"
        Style="z-index: 102; left: 949px; position: absolute; top: 550px" Text="upload" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 103;
        left: 673px; position: absolute; top: 611px; width: 164px; height: 31px; background-color:#50A8AD; color:white; height: 36px;font-size:large;border-radius:9px;border:1px solid black;" Text="Submit" />
    <asp:Label ID="Label2" runat="server" Style="z-index: 104; left: 523px; position: absolute;
        top: 397px; font-size:25px" Text="Email_Id"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 105; left: 538px; position: absolute;
        top: 349px; font-size:25px" Text="User ID"></asp:Label>
    <asp:TextBox ID="tbxregid" runat="server" Style="z-index: 106; left: 688px; position: absolute;
        top: 351px; width: 253px; height: 24px;"></asp:TextBox>
    <asp:TextBox ID="tbxemailid" runat="server" Style="z-index: 107; left: 689px; position: absolute;
        top: 400px; height: 23px; width: 253px;"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Style="z-index: 111; left: 545px; position: absolute;
        top: 495px; font-size:25px" Text="Subject"></asp:Label>
    <asp:DropDownList ID="ddlsubject" runat="server" Style="z-index: 115; left: 693px;
        position: absolute; top: 503px; height: 21px; width: 192px;">
        <asp:ListItem Value="Java"></asp:ListItem>
        <asp:ListItem Value="Asp.Net"></asp:ListItem>
        <asp:ListItem Value="ORACLE"></asp:ListItem>
        <asp:ListItem Value="C"></asp:ListItem>
        <asp:ListItem Value="C++"></asp:ListItem>
        <asp:ListItem Value="SQLSERVER"></asp:ListItem>
        <asp:ListItem Value="J2EE"></asp:ListItem>
        <asp:ListItem Value="C#"></asp:ListItem>
        <asp:ListItem Value="VB.NET "></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label7" runat="server" Style="z-index: 113; left: 570px; position: absolute;
        top: 446px; font-size:25px" Text="Date"></asp:Label>
    <asp:TextBox ID="tbxdate" runat="server" Style="z-index: 114; left: 693px; position: absolute;
        top: 449px; height: 23px; width: 249px;"></asp:TextBox>
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


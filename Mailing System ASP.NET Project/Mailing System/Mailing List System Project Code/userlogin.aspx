<%@ Page Language="C#" MasterPageFile="login.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" Title="User Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <style>
        button{

            background-color:red;
        }
    </style>
    <center style="background-color:#096B95;width:25%; margin-left:auto;margin-right:auto;padding:30px;border-radius:9px" > <table style="width: 161px">
        <tr>
            <td colspan="3" style="padding-bottom:26px;padding-left:20px">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<strong>USER LOGIN</strong></td>
        </tr>
        <tr>
            <td style="width: 13px">
                <asp:Label ID="Label1" runat="server" Text="ID" Width="76px"></asp:Label></td>
            <td colspan="2" style="width: 57px">
                <asp:TextBox ID="TextBox1" runat="server" Width="126px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 13px">
                <asp:Label ID="Label2" runat="server" Text="PASSWORD" Width="113px"></asp:Label></td>
            <td colspan="2" style="width: 57px">
                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" Width="123px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 13px">
                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login"
                    Width="59px"  Style=" background-color:white;  border-radius:9px; color:black; height:27px; width:80px: hoe" /></td>
            <td colspan="2" style="width: 57px">
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" Width="66px" OnClick="Button2_Click" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lbl_msg" runat="server" Width="203px"></asp:Label></td>
        </tr>
    </table></center>
</asp:Content>


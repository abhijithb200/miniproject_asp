<%@ Page Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="Profileposting.aspx.cs" Inherits="userhome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 117px; position: absolute;
        top: 598px" Text="UplaodResume"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" Style="z-index: 101; left: 221px;
        position: absolute; top: 597px" />
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"
        Style="z-index: 102; left: 463px; position: absolute; top: 598px" Text="upload" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 103;
        left: 263px; position: absolute; top: 682px" Text="submit" />
    <asp:Label ID="Label2" runat="server" Style="z-index: 104; left: 153px; position: absolute;
        top: 477px" Text="Email_Id"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 105; left: 161px; position: absolute;
        top: 432px" Text="User ID"></asp:Label>
    <asp:TextBox ID="tbxregid" runat="server" Style="z-index: 106; left: 221px; position: absolute;
        top: 432px"></asp:TextBox>
    <asp:TextBox ID="tbxemailid" runat="server" Style="z-index: 107; left: 220px; position: absolute;
        top: 475px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" Style="z-index: 108;
        left: 153px; position: absolute; top: 335px" Text="Profile Posting"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 111; left: 155px; position: absolute;
        top: 561px" Text="Subject"></asp:Label>
    <asp:DropDownList ID="ddlsubject" runat="server" Style="z-index: 115; left: 219px;
        position: absolute; top: 559px" Width="159px">
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
    <asp:Label ID="Label7" runat="server" Style="z-index: 113; left: 172px; position: absolute;
        top: 523px" Text="Date"></asp:Label>
    <asp:TextBox ID="tbxdate" runat="server" Style="z-index: 114; left: 223px; position: absolute;
        top: 521px"></asp:TextBox>
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
</asp:Content>


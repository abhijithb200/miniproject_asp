<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="maillistingsystem.aspx.cs" Inherits="maillistingsystem" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div>
    <asp:DropDownList ID="ddlsubject" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        Style="z-index: 103; left: 293px; position: absolute; top: 216px" Width="123px">
        <asp:ListItem Value="Java"></asp:ListItem>
        <asp:ListItem Value=".Net"></asp:ListItem>
        <asp:ListItem Value="Oracle"></asp:ListItem>
        <asp:ListItem Value="C"></asp:ListItem>
        <asp:ListItem Value="C++"></asp:ListItem>

    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 104; left: 70px;
        position: absolute; top: 214px;font-size:20px" Text="Select your requirement"></asp:Label>
    <asp:DataGrid ID="dgrid" runat="server" AutoGenerateColumns="False" CellPadding="4"
        ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dgrid_SelectedIndexChanged"
        Style="z-index: 105; left: 63px; position: absolute; top: 308px; width: 570px; height: 161px;text-align:center;" OnItemCommand="dgrid_ItemCommand">
        <Columns>
            <asp:BoundColumn DataField="regid" HeaderText="Reg ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="emailid" HeaderText="Email ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
            <asp:BoundColumn DataField="subject" HeaderText="Subject"></asp:BoundColumn>
            <%--<asp:HyperLinkColumn DataNavigateUrlField="resumepath" DataNavigateUrlFormatString="read.aspx?resumepath={0}"
                        DataTextField="resumepath" HeaderText="FileName"></asp:HyperLinkColumn>--%>
            <asp:TemplateColumn HeaderText="Files List">
                <ItemTemplate>
                    <asp:HyperLink ID="h1" runat="server" NavigateUrl='<%# "~/upload/" + Eval("path") %>'
                        Target="_blank" Text='<%# Eval("path") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
                <ItemTemplate>
                    <asp:LinkButton runat="server" OnClientClick="OpenDialog()"> Send Mail </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditItemStyle BackColor="#2461BF" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    </asp:DataGrid>
   
        <asp:TextBox ID="tbxbody" runat="server" Style="z-index: 106; left: 804px;
            position: absolute; top: 309px; width: 297px; height: 173px;" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="tbxsubject" runat="server" Style="z-index: 111; left: 808px; position: absolute;
            top: 217px; width: 189px; height: 16px;"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Style="z-index: 110;
            left: 808px; position: absolute; top: 180px; height: 21px; width: 39px; font-family: Roboto;
font-style: normal;font-weight:400;font-size:18px" Text="Subject"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Style="z-index: 110;
            left: 808px; position: absolute; top: 273px; height: 21px; width: 39px; font-family: Roboto;
font-style: normal;font-weight:400;font-size:18px" Text="Body"></asp:Label>
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
    <br />
        </div>
</asp:Content>


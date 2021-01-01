<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="masterentry.aspx.cs" Inherits="masterentry" Title="Untitled Page"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    
    <div style="padding:30px;background-color:white;box-shadow: -2px 3px 50px -8px rgba(0,0,0,1); height: 447px;margin-top:59px;margin-left:385px; width: 453px;border-radius:20px">
       
    <script  type="text/javascript">
		
		  function ShowMessage()
    {
       
    if(document.getElementById("message").value != "")
    {
      alert(document.getElementById("message").value);
      document.getElementById("message").value = "";
      }
        }
       
    </script>
      

    &nbsp;<input id="message" runat="server" type="hidden" /><br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 546px; position: absolute;
        top: 215px" Text="ID"></asp:Label>
  
    <asp:Label ID="Label4" runat="server" Style="z-index: 103; left: 530px; position: absolute;
        top: 490px" Text="Email ID"></asp:Label>
    <asp:Label ID="Label5" runat="server" Style="z-index: 104; left: 533px; position: absolute;
        top: 443px" Text="Gender"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 105; left: 526px; position: absolute;
        top: 389px" Text="Birth Date"></asp:Label>
    <asp:Label ID="Label7" runat="server" Style="z-index: 106; left: 531px; position: absolute;
        top: 336px" Text="Surname"></asp:Label>
    <asp:Label ID="Label8" runat="server" Style="z-index: 107; left: 544px; position: absolute;
        top: 274px; height: 15px; width: 46px;" Text="Name"></asp:Label>
    <asp:TextBox ID="tbxregid" runat="server" Style="z-index: 108; left: 620px; position: absolute;
        top: 215px"></asp:TextBox>
    
    <asp:TextBox ID="tbxemailid" runat="server" Style="z-index: 111; left: 624px; position: absolute;
        top: 483px"></asp:TextBox>
    <asp:TextBox ID="tbxgender" runat="server" Style="z-index: 112; left: 625px; position: absolute;
        top: 437px; height: 20px;"></asp:TextBox>
    <asp:TextBox ID="tbxdob" runat="server" Style="z-index: 113; left: 626px; position: absolute;
        top: 385px"></asp:TextBox>
    <asp:TextBox ID="tbxsurname" runat="server" Style="z-index: 114; left: 624px; position: absolute;
        top: 337px"></asp:TextBox>
    <asp:TextBox ID="tbxname" runat="server" Style="z-index: 115; left: 623px; position: absolute;
        top: 275px"></asp:TextBox>
    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Style="z-index: 116;
        left: 679px; position: absolute; top: 602px;height:26px" Text="Cancel" CssClass="button delete" Width="60px"/>
    <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Style="z-index: 118;
        left: 553px; position: absolute; top: 601px;height:26px" Text="Save" Width="60px" CssClass="button clear"/>
    <asp:Button ID="btnedit" runat="server" OnClick="btnedit_Click1" Style="z-index: 119;
        left: 441px; position: absolute; top: 550px;height:26px" Text="Edit" Width="60px" CssClass="button edit"/>
    <asp:Button ID="btnfind" runat="server" OnClick="btnfind_Click" Style="z-index: 120;
        left: 653px; position: absolute; top: 551px;height:26px" Text="Find" Width="63px" CssClass="button find"/>
    <asp:Button ID="btndelete" CssClass="button delete" runat="server" OnClick="btndelete_Click" OnClientClick="return confirm('are u sure to delete')"
        Style="z-index: 121; left: 551px; position: absolute; top: 549px;height:26px" Text="Delete"
        Width="65px" />
    <asp:Button ID="btnclear" CssClass="button clear" runat="server" OnClick="btnclear_Click" Style="z-index: 125;
        left: 754px; position: absolute; top: 551px; height: 26px;" Text="Clear" Width="65px" />
        
      
        </div>
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
       <div>
    <asp:DataGrid ID="dgrid" runat="server" AutoGenerateColumns="False" DataKeyField="regid"
        OnItemCommand="dgrid_ItemCommand" Style=" left: 299px; position: absolute;
        top: 673px; background-color:white;text-align:center" Width="756px" >
        <Columns >
            <asp:BoundColumn DataField="regid" HeaderText="Register ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="name" HeaderText="Name"></asp:BoundColumn>
            <asp:BoundColumn DataField="surname" HeaderText="Surname"></asp:BoundColumn>
            <asp:BoundColumn DataField="dob" HeaderText="DateOfBirth"></asp:BoundColumn>
            <asp:BoundColumn DataField="gender" HeaderText="Gender"></asp:BoundColumn>
            <asp:BoundColumn DataField="emailid" HeaderText="Email ID"></asp:BoundColumn>
           
            <asp:ButtonColumn CommandName="Select" Text="Select"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid>
           </div>
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


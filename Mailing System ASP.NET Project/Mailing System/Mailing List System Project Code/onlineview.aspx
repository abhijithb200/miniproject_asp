<%@ Page Language="C#" MasterPageFile="admin.master" AutoEventWireup="true" CodeFile="onlineview.aspx.cs" Inherits="onlineview" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
<script type="text/javascript" >
      
        
         
             function  OpenDialog(a)
   {
     
    window.showModalDialog("feedbackreply.aspx?data="+a, "Dialog Arguments Value", "dialogHeight: 500px; dialogWidth: 500px; dialogTop: 300px; dialogLeft: 350px; edge: Raised; center: Yes; help: Yes; resizable: No; status: No;");
   }
         
</script>


    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Style="z-index: 103;
        left: 212px; position: absolute; top: 230px; color:white" Text="Feedbacks" Width="188px" ></asp:Label>
    <br />
    <br />
    <br />
    
    <br />
    <div style="margin-left:auto;margin-right:auto;width:70%;margin-top:190px;background-color:#9999;padding:30px">
    <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate >
           <div style="margin-top:20px;background-color:white;padding:10px">
               <div style="display:flex;align-items:center">
               <image src="images/picture.png" width="50px" />
    <asp:Label ID="Label3" runat="server" Text='<%#Eval("emailid") %>' Style="font-size:19px;font-weight:500;padding-right:20px;padding-left:5px"></asp:Label>
                
               <asp:Label ID="Label2" runat="server" Text='<%#Eval("date") %>' Style="color:grey"></asp:Label>
                   </div>
               
               <div style="padding-left:60px">
               <asp:Label ID="Label4" runat="server" Text='<%#Eval("subfeedback") %>' style="font-size:24px;font-weight:600"></asp:Label>
    
   
    <div runat="server" innerText='<%#Eval("comment") %>' style="padding-top:10px;font-size:18px"></div>
                   </div>
               </div>
     </ItemTemplate>
    </asp:Repeater>
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
</asp:Content>


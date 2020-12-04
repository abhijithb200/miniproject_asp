using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class feedbackrepl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        string details = Session["details"].ToString();
        TextBox1.Text = details.Substring(0, details.IndexOf('|'));


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("onlineview.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        message.Value = "Message sent successfully!!!";
    }
}

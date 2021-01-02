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
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbxdate.Text = System.DateTime.Now.ToShortDateString();

        }
        string email = (string)Session["user_email"];
        if (email.Length >1)
        {
            tbxemailid.Text = email;
            tbxemailid.ReadOnly = true;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
      string cnstr = ConfigurationSettings.AppSettings["dbconnection"];
        SqlConnection cn = new SqlConnection(cnstr);
        cn.Open();
        string name = (string)Session["user_name"];
        string query = "insert into feedback values(@subfeedback,@emailid,@date,@comment,@name)";

        SqlCommand cmd = new SqlCommand(query, cn);

        cmd.Parameters.Add(new SqlParameter("@subfeedback", tbxsubfeedback.Text));
        cmd.Parameters.Add(new SqlParameter("@emailid", tbxemailid.Text));


        cmd.Parameters.Add(new SqlParameter("@date", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@name", name));

        cmd.Parameters.Add(new SqlParameter("@comment", tbxcomment.Text));
     
        cmd.ExecuteNonQuery();

        //message.Value = "Feedback Posted Successfully!!!";
        Response.Write("<script>alert('Feedback posted Sucessfully')</script>");

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
}

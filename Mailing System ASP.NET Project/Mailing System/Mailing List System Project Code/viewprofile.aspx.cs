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
public partial class viewprofile : System.Web.UI.Page
{
    SqlConnection cn = null;


    SqlCommand cmd = null;
    string cs = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = (string)Session["user"];


        string cnstr = ConfigurationSettings.AppSettings["dbconnection"];

        cn = new SqlConnection(cnstr);


        cmd = new SqlCommand("select regid,name,surname,dob,emailid,password from newregistration where regid='" + id + "'", cn);
        cn.Open();

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbldob.Text = dr["dob"].ToString();
            lblmailid.Text = dr["emailid"].ToString();
            lblname.Text = dr["name"].ToString();
            lblpassword.Text = dr["password"].ToString();
            lblsurname.Text = dr["surname"].ToString();
            
        }
    }
    protected void lbtnprofile_Click(object sender, EventArgs e)
    {
        Server.Transfer("edit.aspx");
    }
}

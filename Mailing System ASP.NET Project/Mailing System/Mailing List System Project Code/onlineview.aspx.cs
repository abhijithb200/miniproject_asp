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

public partial class onlineview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            if (!IsPostBack)
            {
                SqlConnection cn = null;

                string cnstr = ConfigurationSettings.AppSettings["dbconnection"];
                cn = new SqlConnection(cnstr);

                string query = "select subfeedback,emailid,date,comment, comment + '|'+ emailid details from feedback order by date desc";

                cn.Open();

                SqlCommand cmd = new SqlCommand(query, cn);

                Repeater1.DataSource = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                Repeater1.DataBind();

            }
        }
        else
        {
            Response.Redirect("adminlogin.aspx");
        }


    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataGrid1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
   
}

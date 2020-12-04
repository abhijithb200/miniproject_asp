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

public partial class edit : System.Web.UI.Page
{
    SqlConnection cn = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    SqlCommand cmd = null;
    string cs = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Session["user"].ToString();
            int userid = Convert.ToInt32(id);
            try
            {
                string cnstr = ConfigurationSettings.AppSettings["dbconnection"];

                cn = new SqlConnection(cnstr);

                cmd = new SqlCommand("select name,surname,dob,emailid,password from newregistration where regid=" + userid, cn);
                cn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                txtdob.Text = dr["dob"].ToString();
                txtmail.Text = dr["emailid"].ToString();
                txtsurname.Text = dr["surname"].ToString();
                txtuser.Text = dr["name"].ToString();
                txtpwd.Text = dr["password"].ToString();
                cn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cnstr = ConfigurationSettings.AppSettings["dbconnection"];

        cn = new SqlConnection(cnstr);


        string id = Session["user"].ToString();

        SqlCommand cmd = new SqlCommand("update newregistration set name='" + txtuser.Text + "',password='" + txtpwd.Text + "',surname ='" + txtsurname.Text + "',dob='" + txtdob.Text + "',emailid='" + txtmail.Text + "' where regid='" + id + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("successfully edited");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
}

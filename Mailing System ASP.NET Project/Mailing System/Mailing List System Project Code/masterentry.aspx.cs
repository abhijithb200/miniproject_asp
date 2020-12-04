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


public partial class masterentry : System.Web.UI.Page
{
    string cnstr = ConfigurationSettings.AppSettings["dbconnection"];
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] != null)
            {


                SqlConnection cn = null;

              
                cn = new SqlConnection(cnstr);

                string query = "select regid, name,surname,dob,gender,emailid,alternateemailid,otherdetails from newregistration";

                cn.Open();




                SqlCommand cmd = new SqlCommand(query, cn);
                dgrid.DataSource = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                dgrid.DataBind();








                if (dgrid.Items.Count > 1)
                {
                    // Response.Write(dgrid.Items[0].Cells[0].Text);

                    tbxregid.Text = dgrid.Items[0].Cells[0].Text;
                    tbxname.Text = dgrid.Items[0].Cells[1].Text;
                    tbxsurname.Text = dgrid.Items[0].Cells[2].Text;
                    tbxdob.Text = dgrid.Items[0].Cells[3].Text;
                    tbxgender.Text = dgrid.Items[0].Cells[4].Text;
                    tbxemailid.Text = dgrid.Items[0].Cells[5].Text;
                    tbxalternateemail.Text = dgrid.Items[0].Cells[6].Text;
                    tbxotherdetails.Text = dgrid.Items[0].Cells[7].Text;





                }
                else
                {
                    Response.Write("no records to display");
                }






            }
            else
            {
                Response.Redirect("adminlogin.aspx");

            }

        }






    }
    protected void dgrid_ItemCommand(object source, DataGridCommandEventArgs e)
    {



        tbxregid.Text = e.Item.Cells[0].Text;
        tbxname.Text = e.Item.Cells[1].Text;
        tbxsurname.Text = e.Item.Cells[2].Text;
        tbxdob.Text = e.Item.Cells[3].Text;
        tbxgender.Text = e.Item.Cells[4].Text;
        tbxemailid.Text = e.Item.Cells[5].Text;
        tbxalternateemail.Text = e.Item.Cells[6].Text;
        tbxotherdetails.Text = e.Item.Cells[7].Text;




        //tbxregnid.Text = e.Item.Cells[0].Text;
        //tbxholdername.Text = e.Item.Cells[1].Text;
        //tbxemailid.Text = e.Item.Cells[2].Text;
        //tbxphone.Text = e.Item.Cells[3].Text;
        //tbxmobile.Text = e.Item.Cells[4].Text;
        //tbxpresaddr.Text = e.Item.Cells[5].Text;
        //tbxcity.Text = e.Item.Cells[6].Text;
        //tbxstate.Text = e.Item.Cells[7].Text;
        //tbxpincode.Text = e.Item.Cells[8].Text;
        //tbxfrequency.Text = e.Item.Cells[9].Text;




    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnedit_Click1(object sender, EventArgs e)
    {
        SqlConnection cn = null;

     
        cn = new SqlConnection(cnstr);
        cn.Open();

        string query1 = "update newregistration set name='" + tbxname.Text + "'," + "surname='" + tbxsurname.Text + "'," + "dob='" + tbxdob.Text + "'," + "gender='" + tbxgender.Text + "'," + "emailid='" + tbxemailid.Text + "'," + "alternateemailid='" + tbxalternateemail.Text + "'," + "otherdetails='" + tbxotherdetails.Text + "'" + "where regid=" + tbxregid.Text;

        SqlCommand cmd = new SqlCommand(query1, cn);

        cmd.ExecuteNonQuery();

        message.Value = "Operation completed successfully !!!";
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {

        SqlConnection cn = null;

        string cnstr = ConfigurationSettings.AppSettings["dbconnection"];
        cn = new SqlConnection(cnstr);
        cn.Open();

        string query1 = "update newregistration set name='" + tbxname.Text + "'," + "surname='" + tbxsurname.Text + "'," + "dob='" + tbxdob.Text + "'," + "gender='" + tbxgender.Text + "'," + "emailid='" + tbxemailid.Text + "'," + "alternateemailid='" + tbxalternateemail.Text + "'," + "otherdetails='" + tbxotherdetails.Text + "'" + "where regid=" + tbxregid.Text;

        SqlCommand cmd = new SqlCommand(query1, cn);

        cmd.ExecuteNonQuery();

        message.Value = "Operation completed successfully !!!";
    }


protected void  btncancel_Click(object sender, EventArgs e)
{
    
        tbxregid.Text = dgrid.Items[0].Cells[0].Text;
        tbxname.Text = dgrid.Items[0].Cells[1].Text;
        tbxsurname.Text = dgrid.Items[0].Cells[2].Text;
        tbxdob.Text = dgrid.Items[0].Cells[3].Text;
        tbxgender.Text = dgrid.Items[0].Cells[4].Text;
        tbxemailid.Text = dgrid.Items[0].Cells[5].Text;
        tbxalternateemail.Text = dgrid.Items[0].Cells[6].Text;
        tbxotherdetails.Text = dgrid.Items[0].Cells[7].Text;


}
protected void  btndelete_Click(object sender, EventArgs e)
{
    
        SqlConnection cn = null;

      
        cn = new SqlConnection(cnstr);


        string query2 = "delete from newregistration where regid=" + tbxregid.Text;    //reg_policy table
        SqlCommand cmd = new SqlCommand(query2, cn);
        cn.Open();
        cmd.ExecuteNonQuery();


        message.Value = "Record Deleted successfully";

}
protected void  btnfind_Click(object sender, EventArgs e)
{

    SqlConnection cn = null;

   
    cn = new SqlConnection(cnstr);
    string findquery = " select regid,name,surname,dob,gender,emailid,alternateemailid,otherdetails from newregistration where regid=" + tbxregid.Text;
    SqlCommand cmdfind = new SqlCommand(findquery, cn);
    cn.Open();

    SqlDataReader dr = cmdfind.ExecuteReader();

    while (dr.Read())
    {

        tbxregid.Text = dr["regid"].ToString();
        tbxname.Text = dr["name"].ToString();
        tbxsurname.Text = dr["surname"].ToString();
        tbxdob.Text = dr["dob"].ToString();
        tbxgender.Text = dr["gender"].ToString();
        tbxemailid.Text = dr["emailid"].ToString();
        tbxalternateemail.Text = dr["alternateemailid"].ToString();
        tbxotherdetails.Text = dr["otherdetails"].ToString();


    }











}
protected void  btnclear_Click(object sender, EventArgs e)
{
      tbxregid.Text = "";
        tbxname.Text = "";
        tbxsurname.Text = "";
        tbxdob.Text = "";
        tbxgender.Text = "";
        tbxemailid.Text = "";
        tbxalternateemail.Text = "";
        tbxotherdetails.Text = ""; 

}
}

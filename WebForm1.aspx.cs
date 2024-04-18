using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication88
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=c:\users\srcadmin\documents\visual studio 2012\Projects\WebApplication88\WebApplication88\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();



            SqlCommand cmd = new SqlCommand("INSERT INTO DTable(Username,Email,Password) VALUES (@Username,@Email,@Password)", con);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox3.Text);

            cmd.ExecuteNonQuery();
            Label1.Text = "Successfully inserted into your Database";
            con.Close();

            Response.Redirect("WebForm2.aspx");
        }
    }
}
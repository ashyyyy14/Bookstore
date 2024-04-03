using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = WebConfigurationManager.ConnectionStrings["projectConnectionString"].ConnectionString;
            SqlConnection myconn = new SqlConnection(cs);
            string str = "Insert into Inventory values(@username,@email,@pass,@repass)";
            SqlCommand cmd = new SqlCommand(str, myconn);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
            cmd.Parameters.AddWithValue("@repass", txtConfirmPassword.Text);
            try
            {
                myconn.Open();
                cmd.ExecuteNonQuery();
                myconn.Close();
            }
            catch (Exception err)
            {
                result.Text = err.Message;
            }
            Response.Redirect("Home.aspx");
        }
    }
}
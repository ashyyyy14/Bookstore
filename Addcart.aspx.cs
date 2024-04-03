using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project
{
    public partial class Addcart : System.Web.UI.Page
    {
        protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedItemName = ddl1.SelectedItem.Text;
            string selectSQL = "SELECT Id, Description, Price FROM Books WHERE Title = @title";
            string connectionString = WebConfigurationManager.ConnectionStrings["projectConnectionString2"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, myConn);
            cmd.Parameters.AddWithValue("@title", selectedItemName);
            SqlDataReader reader;
            try
            {
                myConn.Open();
                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        string description = reader["Description"].ToString();
                        decimal price = Convert.ToDecimal(reader["Price"]);
                        lbl_desc_res.Text = description;
                        lbl_price_res.Text = price.ToString();
                    }
                }
                reader.Close();
            }
            catch (Exception err)
            {
               
            }
            finally
            {
                myConn.Close();
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            string quantSQL;
            quantSQL = "SELECT Id, Quantity FROM Books WHERE Title = @title";
            int quant = int.Parse(ddl2.SelectedItem.Text);
            string up = "UPDATE Books SET Quantity=@quan WHERE Title = @title";
            string connectionstring2 = WebConfigurationManager.ConnectionStrings["projectConnectionString2"].ConnectionString;
            SqlConnection myConn2 = new SqlConnection(connectionstring2);
            SqlCommand upcmd = new SqlCommand(up, myConn2);
            SqlCommand cmd = new SqlCommand(quantSQL, myConn2);
            cmd.Parameters.AddWithValue("@title", ddl1.SelectedItem.Text);
            upcmd.Parameters.AddWithValue("@title",ddl1.SelectedItem.Text);
            SqlDataReader reader2;
            int mainQuant = 0;
            try
            {
                myConn2.Open();
                reader2 = cmd.ExecuteReader();
                if (reader2.HasRows)
                {
                    while (reader2.Read())
                    {
                        mainQuant = Convert.ToInt32(reader2["Quantity"]);
                        mainQuant -= quant;
                    }
                }
                reader2.Close();
                upcmd.Parameters.AddWithValue("@quan", mainQuant);
                upcmd.ExecuteNonQuery();
                Ans.Text = "Added to cart!";
            }
            catch (Exception ex)
            {
                
            }
            finally
            {
                myConn2.Close();
            }
        }

    }
}

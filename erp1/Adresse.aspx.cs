using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace erp1
{
    public partial class Adresse1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["erpConnectionString"].ConnectionString);
    
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ASPxButton2_Click(object sender, EventArgs e)
        {
            cn.Open();
            string req = "insert into Adresse (Code) Values( @add)";
            SqlCommand insertCommand = new SqlCommand(req, cn);
            insertCommand.Parameters.AddWithValue("@add", TextArea1.Value);
            insertCommand.ExecuteNonQuery();
            cn.Close();
            if (ASPxButton2.Text.Equals("Ajouter"))
            {
                TextArea1.InnerText = "";
            }
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            if (ASPxComboBox2.SelectedItem.Value.ToString() != null)
            {
              
                TextArea1.Value = ASPxComboBox1.SelectedItem.Value + ":" + BootstrapTextBox1.Value + "\t" + TextArea1.Value;
                ASPxComboBox1.Text = "";
                BootstrapTextBox1.Text = "";

            }
            if (TextArea1.Value != null)
            {
                cn.Open();
                ListBox1.Items.Clear();
                string req = "select Code from Adresse where Code like '%m_%'";
                SqlCommand cmd = new SqlCommand(req, cn);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ListBox1.Items.Add(reader.GetValue(0).ToString());
                }

            }
            cn.Close();
          

        }

        protected void ASPxButton3_Click(object sender, EventArgs e)
        {
            TextArea1.InnerText = "";

           
        }

        protected void ASPxComboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            cn.Open();
            ASPxComboBox1.Items.Clear();
            string req = "select Label from AddressField where CategorieLabel= '" + ASPxComboBox2.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ASPxComboBox1.Items.Add(dr["Label"].ToString());
            }
            cn.Close();
        }

       
      

      


      
    }
}
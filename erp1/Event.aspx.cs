using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class Event : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["erpConnectionString"].ConnectionString);
    
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
           
                ASPxComboBox type = ASPxGridView1.FindEditFormLayoutItemTemplateControl("lab") as ASPxComboBox;
                cn.Open();
                string req = "select Id from EventFamilly where Label= '" + type.SelectedItem.ToString() + "'";
                SqlCommand cmd = new SqlCommand(req, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    e.NewValues["EventFamilly_Id"] = dr["Id"].ToString();
                }
                cn.Close();
          
                 ASPxComboBox EventNature = ASPxGridView1.FindEditFormLayoutItemTemplateControl("EventNature") as ASPxComboBox;
                 cn.Open();
                 string req1 = "select Id from EventNature where Label= '" + EventNature.SelectedItem.ToString() + "'";
                 SqlCommand cmd1 = new SqlCommand(req1, cn);
                 SqlDataReader dr1 = cmd1.ExecuteReader();
                 while (dr1.Read())
                 {
                     e.NewValues["IdEventNature"] = dr1["Id"].ToString();
                 }
                 cn.Close();
          
             
           
         
            
        }

        protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

            ASPxComboBox type = ASPxGridView1.FindEditFormLayoutItemTemplateControl("lab") as ASPxComboBox;
            cn.Open();
            string req = "select Id from EventFamilly where Label= '" + type.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["EventFamilly_Id"] = dr["Id"].ToString();
            }
            cn.Close();

            ASPxComboBox EventNature = ASPxGridView1.FindEditFormLayoutItemTemplateControl("EventNature") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from EventNature where Label= '" + EventNature.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["IdEventNature"] = dr1["Id"].ToString();
            }
            cn.Close();
          
        }
      
    }
}
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
    public partial class Document : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["erpConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ASPxUploadControl1_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            try
            {
              
                string path = Page.MapPath("~/Image/") + e.UploadedFile.FileName;
                e.UploadedFile.SaveAs(path);
                Session["data"] = e.UploadedFile.FileName;

            }
            catch (Exception e1)
            {

                System.Diagnostics.Debug.WriteLine(e1);
            }
        }

        protected void ASPxGridView2_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxComboBox code = ASPxGridView2.FindEditFormLayoutItemTemplateControl("Code") as ASPxComboBox;
            cn.Open();
            string req = "select Id from IdentityDocType where Code= '" + code.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["IdentityDocType_Id"] = dr["Id"].ToString();
            }
            cn.Close();
          
            e.NewValues["DocScan"] = Session["data"];
        }

        protected void ASPxGridView2_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
             ASPxComboBox code = ASPxGridView2.FindEditFormLayoutItemTemplateControl("Code") as ASPxComboBox;
            cn.Open();
            string req = "select Id from IdentityDocType where Code= '" + code.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["IdentityDocType_Id"] = dr["Id"].ToString();
            }
            cn.Close();
          
            e.NewValues["DocScan"] = Session["data"];
        }
        }
    }

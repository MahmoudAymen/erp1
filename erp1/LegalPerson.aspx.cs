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
    public partial class LegalPerson : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["erpConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
              System.Web.HttpBrowserCapabilities browser = Request.Browser;
              if (browser.IsMobileDevice == true)
              {
                  System.Diagnostics.Debug.WriteLine("Mobile");
                  ASPxCardView1.SettingsPager.EnableAdaptivity = true;
                  ASPxCardView1.SettingsPager.SettingsTableLayout.ColumnCount = 1;
                  ASPxCardView1.SettingsPager.SettingsTableLayout.RowsPerPage = 1;
             
                
              }
              else
              {
                  System.Diagnostics.Debug.WriteLine("desktob");
                  ASPxCardView1.SettingsPager.EnableAdaptivity = true;
                  ASPxCardView1.SettingsPager.SettingsTableLayout.ColumnCount = 4;
                  ASPxCardView1.SettingsPager.SettingsTableLayout.RowsPerPage = 1;
                
              }

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

        protected void ASPxCardView1_CardInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            e.NewValues["IdentificationDocScan"] = Session["data"];
            ASPxComboBox type = ASPxCardView1.FindEditFormLayoutItemTemplateControl("x") as ASPxComboBox;
            e.NewValues["Type"] = type.SelectedItem.Text;
           
        }


        protected void ASPxCardView1_CardUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            e.NewValues["IdentificationDocScan"] = Session["data"];
            ASPxComboBox type = ASPxCardView1.FindEditFormLayoutItemTemplateControl("x") as ASPxComboBox;
            e.NewValues["Type"] = type.SelectedItem.Text;
        }
        protected void ASPxGridView1_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            Session["Id"] = e.Parameters;
            test.SelectParameters["Id"].DefaultValue = e.Parameters;
            (sender as ASPxGridView).DataBind();
        }

        protected void ASPxGridView1_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null) return;
            test.SelectParameters["Id"].DefaultValue = Session["Id"].ToString();
            (sender as ASPxGridView).DataBind();
        }
        protected void ASPxGridView2_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            Session["Id"] = e.Parameters;
            test16.SelectParameters["Id"].DefaultValue = e.Parameters;
            (sender as ASPxGridView).DataBind();
        }

        protected void ASPxGridView2_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null) return;
            test16.SelectParameters["Id"].DefaultValue = Session["Id"].ToString();
            (sender as ASPxGridView).DataBind();
        }

        protected void ASPxGridView3_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            Session["Id"] = e.Parameters;
            test17.SelectParameters["Id"].DefaultValue = e.Parameters;
            (sender as ASPxGridView).DataBind();
        }

        protected void ASPxGridView3_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null) return;
            test17.SelectParameters["Id"].DefaultValue = Session["Id"].ToString();
            (sender as ASPxGridView).DataBind();
        }
        protected void ASPxGridView4_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e)
        {
            Session["Id"] = e.Parameters;
            staff.SelectParameters["Id"].DefaultValue = e.Parameters;
            (sender as ASPxGridView).DataBind();
        }

        protected void ASPxGridView4_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null) return;
            staff.SelectParameters["Id"].DefaultValue = Session["Id"].ToString();
            (sender as ASPxGridView).DataBind();
        }
        protected void ASPxGridView4_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {

            ASPxComboBox LegalPerson = ASPxGridView4.FindEditFormLayoutItemTemplateControl("LegalPersonn") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();


            ASPxComboBox Staf = ASPxGridView4.FindEditFormLayoutItemTemplateControl("Staff") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from Staff where PositionId= '" + Staf.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["Staff_Id"] = dr1["Id"].ToString();
            }
            cn.Close();






        }

        protected void ASPxGridView4_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {


            ASPxComboBox LegalPerson = ASPxGridView4.FindEditFormLayoutItemTemplateControl("LegalPersonn") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();


            ASPxComboBox Staf = ASPxGridView4.FindEditFormLayoutItemTemplateControl("Staff") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from Staff where PositionId= '" + Staf.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["Staff_Id"] = dr1["Id"].ToString();
            }
            cn.Close();




        }

        protected void ASPxGridView3_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {

            ASPxComboBox LegalPerson = ASPxGridView3.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();

            ASPxComboBox Adresse = ASPxGridView3.FindEditFormLayoutItemTemplateControl("Adresse") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from Adresse where Code= '" + Adresse.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["Adresse_Id"] = dr1["Id"].ToString();
            }
            cn.Close();






        }
        protected void ASPxGridView3_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {


            ASPxComboBox LegalPerson = ASPxGridView3.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();

            ASPxComboBox Adresse = ASPxGridView3.FindEditFormLayoutItemTemplateControl("Adresse") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from Adresse where Code= '" + Adresse.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["Adresse_Id"] = dr1["Id"].ToString();
            }
            cn.Close();





        }
        protected void ASPxGridView2_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {

            ASPxComboBox LegalPerson = ASPxGridView2.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();

            ASPxComboBox Adresse = ASPxGridView2.FindEditFormLayoutItemTemplateControl("PartnerDocs") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from PartnerDocs where DocRef= '" + Adresse.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["PartnerDocs_Id"] = dr1["Id"].ToString();
            }
            cn.Close();






        }
        protected void ASPxGridView2_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

            ASPxComboBox LegalPerson = ASPxGridView2.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();

            ASPxComboBox Adresse = ASPxGridView2.FindEditFormLayoutItemTemplateControl("PartnerDocs") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from PartnerDocs where DocRef= '" + Adresse.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["PartnerDocs_Id"] = dr1["Id"].ToString();
            }
            cn.Close();




        }
        protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {


            ASPxComboBox LegalPerson = ASPxGridView1.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();

            ASPxComboBox Adresse = ASPxGridView1.FindEditFormLayoutItemTemplateControl("Adresse") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from Adresse where Code= '" + Adresse.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["Adresse_Id"] = dr1["Id"].ToString();
            }
            cn.Close();





        }
        protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {

            ASPxComboBox LegalPerson = ASPxGridView1.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from LegalPerson where LegalName= '" + LegalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["LegalPersonn_Id"] = dr["Id"].ToString();
            }
            cn.Close();

            ASPxComboBox Adresse = ASPxGridView1.FindEditFormLayoutItemTemplateControl("Adresse") as ASPxComboBox;
            cn.Open();
            string req1 = "select Id from Adresse where Code= '" + Adresse.SelectedItem.ToString() + "'";
            SqlCommand cmd1 = new SqlCommand(req1, cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                e.NewValues["Adresse_Id"] = dr1["Id"].ToString();
            }
            cn.Close();


        }


      

      
    }
}
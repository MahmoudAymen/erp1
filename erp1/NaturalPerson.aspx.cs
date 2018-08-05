using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace erp1
{
    public partial class WebForm1 : System.Web.UI.Page
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
                ASPxCardView card = sender as ASPxCardView;
               
                string path = Page.MapPath("~/Image/") + e.UploadedFile.FileName;
                e.UploadedFile.SaveAs(path);
                Session["data"] = e.UploadedFile.FileName;
               
            }
            catch (Exception e1)
            {

                System.Diagnostics.Debug.WriteLine(e1);
            }
        }
        ASPxPageControl FindPageControl(ASPxCardView card)
        {
            return card.FindEditFormTemplateControl("pageControl") as ASPxPageControl;
        }

        protected void ASPxCardView1_CardInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxCardView card = sender as ASPxCardView;
            ASPxTextBox f = FindPageControl(card).FindControl("f") as ASPxTextBox;
            e.NewValues["FirstName"] = f.Text;
            ASPxTextBox l = FindPageControl(card).FindControl("l") as ASPxTextBox;
            e.NewValues["LastName"] = l.Text;
            ASPxTextBox j = FindPageControl(card).FindControl("j") as ASPxTextBox;
            e.NewValues["JeuneFilleName"] = j.Text;
            ASPxTextBox p = FindPageControl(card).FindControl("p") as ASPxTextBox;
            e.NewValues["Position"] = p.Text;
            ASPxDateEdit d = FindPageControl(card).FindControl("d") as ASPxDateEdit;
           e.NewValues["DateOfBirth"] = Convert.ToDateTime(d.Text);
            ASPxTextBox m = FindPageControl(card).FindControl("m") as ASPxTextBox;
            e.NewValues["MaritalStatus"] = m.Text;
            ASPxTextBox s = FindPageControl(card).FindControl("s") as ASPxTextBox;
            e.NewValues["SocialSecurityRef"] = s.Text;
            ASPxTextBox fa = FindPageControl(card).FindControl("fa") as ASPxTextBox;
            e.NewValues["FatherId"] = fa.Text;
            ASPxTextBox mo = FindPageControl(card).FindControl("mo") as ASPxTextBox;
            e.NewValues["MotherId"] = mo.Text;
            ASPxTextBox st = FindPageControl(card).FindControl("st") as ASPxTextBox;
            e.NewValues["State"] = st.Text;
            ASPxDateEdit da = FindPageControl(card).FindControl("da") as ASPxDateEdit;
            e.NewValues["DeathDate"] = Convert.ToDateTime(da.Text);
            ASPxTextBox sex = FindPageControl(card).FindControl("sex") as ASPxTextBox;
            e.NewValues["Sexe"] = sex.Text;
            ASPxTextBox fax = FindPageControl(card).FindControl("fax") as ASPxTextBox;
            e.NewValues["Fax"] = fax.Text;
            ASPxTextBox note = FindPageControl(card).FindControl("note") as ASPxTextBox;
            e.NewValues["note"] = note.Text;
            e.NewValues["Photo"] = Session["data"];
           
        }

        
        protected void ASPxCardView1_CardUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxTextBox f = FindPageControl(ASPxCardView1).FindControl("f") as ASPxTextBox;
            e.NewValues["FirstName"] = f.Text;
            ASPxTextBox l = FindPageControl(ASPxCardView1).FindControl("l") as ASPxTextBox;
            e.NewValues["LastName"] = l.Text;
            ASPxTextBox j = FindPageControl(ASPxCardView1).FindControl("j") as ASPxTextBox;
            e.NewValues["JeuneFilleName"] = j.Text;
            ASPxTextBox p = FindPageControl(ASPxCardView1).FindControl("p") as ASPxTextBox;
            e.NewValues["Position"] = p.Text;
            ASPxDateEdit d = FindPageControl(ASPxCardView1).FindControl("d") as ASPxDateEdit;
            e.NewValues["DateOfBirth"] = Convert.ToDateTime(d.Text);
            ASPxTextBox m = FindPageControl(ASPxCardView1).FindControl("m") as ASPxTextBox;
            e.NewValues["MaritalStatus"] = m.Text;
            ASPxTextBox s = FindPageControl(ASPxCardView1).FindControl("s") as ASPxTextBox;
            e.NewValues["SocialSecurityRef"] = s.Text;
            ASPxTextBox fa = FindPageControl(ASPxCardView1).FindControl("fa") as ASPxTextBox;
            e.NewValues["FatherId"] = fa.Text;
            ASPxTextBox mo = FindPageControl(ASPxCardView1).FindControl("mo") as ASPxTextBox;
            e.NewValues["MotherId"] = mo.Text;
            ASPxTextBox st = FindPageControl(ASPxCardView1).FindControl("st") as ASPxTextBox;
            e.NewValues["State"] = st.Text;
            ASPxDateEdit da = FindPageControl(ASPxCardView1).FindControl("da") as ASPxDateEdit;
            e.NewValues["DeathDate"] = Convert.ToDateTime(da.Text);
            ASPxTextBox sex = FindPageControl(ASPxCardView1).FindControl("sex") as ASPxTextBox;
            e.NewValues["Sexe"] = sex.Text;
            ASPxTextBox fax = FindPageControl(ASPxCardView1).FindControl("fax") as ASPxTextBox;
            e.NewValues["Fax"] = fax.Text;
            ASPxTextBox note = FindPageControl(ASPxCardView1).FindControl("note") as ASPxTextBox;
            e.NewValues["note"] = note.Text;
            e.NewValues["Photo"] = Session["data"];
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

            ASPxComboBox NaturalPerson = ASPxGridView4.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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

            ASPxComboBox NaturalPerson = ASPxGridView4.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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

            ASPxComboBox NaturalPerson = ASPxGridView3.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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


            ASPxComboBox NaturalPerson = ASPxGridView3.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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

            ASPxComboBox NaturalPerson = ASPxGridView2.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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


            ASPxComboBox NaturalPerson = ASPxGridView2.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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


            ASPxComboBox NaturalPerson = ASPxGridView1.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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


            ASPxComboBox NaturalPerson = ASPxGridView1.FindEditFormLayoutItemTemplateControl("PersonnePysique") as ASPxComboBox;
            cn.Open();
            string req = "select Id from NaturalPerson where FirstName= '" + NaturalPerson.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["PersonnePysique_Id"] = dr["Id"].ToString();
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
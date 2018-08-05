using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class Good : System.Web.UI.Page
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
              ASPxCardView1.SettingsPager.SettingsTableLayout.RowsPerPage = 4;
             
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
        ASPxPageControl FindPageControl(ASPxCardView card)
        {
            return card.FindEditFormTemplateControl("pageControl") as ASPxPageControl;
        }

        protected void ASPxCardView1_CardInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            ASPxCardView card = sender as ASPxCardView;
            ASPxComboBox TypeCode = FindPageControl(card).FindControl("TypeCode") as ASPxComboBox;
            e.NewValues["TypeCode"] = TypeCode.SelectedItem.Text;
            ASPxTextBox Reference = FindPageControl(card).FindControl("Reference") as ASPxTextBox;
            e.NewValues["Reference"] = Reference.Text;
            ASPxTextBox BarCode = FindPageControl(card).FindControl("BarCode") as ASPxTextBox;
            e.NewValues["BarCode"] = BarCode.Text;
            ASPxTextBox TaxCode = FindPageControl(card).FindControl("TaxCode") as ASPxTextBox;
            e.NewValues["TaxCode"] = TaxCode.Text;
            ASPxComboBox UnitCode = FindPageControl(card).FindControl("UnitCode") as ASPxComboBox;
            e.NewValues["UnitCode"] = UnitCode.SelectedItem.Text;
            ASPxTextBox Label = FindPageControl(card).FindControl("Label") as ASPxTextBox;
            e.NewValues["Label"] = Label.Text;
            ASPxTextBox Description = FindPageControl(card).FindControl("Description") as ASPxTextBox;
            e.NewValues["Description"] = Description.Text;
            ASPxDateEdit ObtaningDate = FindPageControl(card).FindControl("ObtaningDate") as ASPxDateEdit;
            e.NewValues["ObtaningDate"] = Convert.ToDateTime(ObtaningDate.Value.ToString());
            ASPxTextBox PurchasingPrice = FindPageControl(card).FindControl("PurchasingPrice") as ASPxTextBox;
            e.NewValues["PurchasingPrice"] = float.Parse(PurchasingPrice.Text);
            ASPxTextBox SellingPrice = FindPageControl(card).FindControl("SellingPrice") as ASPxTextBox;
            e.NewValues["SellingPrice"] = float.Parse(SellingPrice.Text);

            ASPxComboBox FamilyCode = FindPageControl(card).FindControl("FamilyCode") as ASPxComboBox;
            e.NewValues["FamilyCode"] = FamilyCode.SelectedItem.Text;

            ASPxDateEdit DelivryDate = FindPageControl(card).FindControl("DelivryDate") as ASPxDateEdit;
            e.NewValues["DelivryDate"] = Convert.ToDateTime(DelivryDate.Value.ToString());

            ASPxTextBox WarantyPeriod = FindPageControl(card).FindControl("WarantyPeriod") as ASPxTextBox;
            e.NewValues["WarantyPeriod"] = float.Parse(WarantyPeriod.Text);

            ASPxTextBox StorageCondition = FindPageControl(card).FindControl("StorageCondition") as ASPxTextBox;
            e.NewValues["StorageCondition"] = StorageCondition.Text;

            ASPxTextBox SpecialPrecaution = FindPageControl(card).FindControl("SpecialPrecaution") as ASPxTextBox;
            e.NewValues["SpecialPrecaution"] = SpecialPrecaution.Text;

            ASPxComboBox StockTrakingMethodCode = FindPageControl(card).FindControl("StockTrakingMethodCode") as ASPxComboBox;
            e.NewValues["StockTrakingMethodCode"] = StockTrakingMethodCode.SelectedItem.Text;

            ASPxComboBox PackagingTypeCode = FindPageControl(card).FindControl("PackagingTypeCode") as ASPxComboBox;
            e.NewValues["PackagingTypeCode"] = PackagingTypeCode.SelectedItem.Text;

            ASPxTextBox note = FindPageControl(card).FindControl("note") as ASPxTextBox;
            e.NewValues["note"] = note.Text;

            e.NewValues["Photo"] = Session["data"];

        }

        protected void ASPxCardView1_CardUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            ASPxCardView card = sender as ASPxCardView;
            ASPxComboBox TypeCode = FindPageControl(card).FindControl("TypeCode") as ASPxComboBox;
            e.NewValues["TypeCode"] = TypeCode.SelectedItem.Text;
            ASPxTextBox Reference = FindPageControl(card).FindControl("Reference") as ASPxTextBox;
            e.NewValues["Reference"] = Reference.Text;
            ASPxTextBox BarCode = FindPageControl(card).FindControl("BarCode") as ASPxTextBox;
            e.NewValues["BarCode"] = BarCode.Text;
            ASPxTextBox TaxCode = FindPageControl(card).FindControl("TaxCode") as ASPxTextBox;
            e.NewValues["TaxCode"] = TaxCode.Text;
            ASPxComboBox UnitCode = FindPageControl(card).FindControl("UnitCode") as ASPxComboBox;
            e.NewValues["UnitCode"] = UnitCode.SelectedItem.Text;
            ASPxTextBox Label = FindPageControl(card).FindControl("Label") as ASPxTextBox;
            e.NewValues["Label"] = Label.Text;
            ASPxTextBox Description = FindPageControl(card).FindControl("Description") as ASPxTextBox;
            e.NewValues["Description"] = Description.Text;
            ASPxDateEdit ObtaningDate = FindPageControl(card).FindControl("ObtaningDate") as ASPxDateEdit;
            e.NewValues["ObtaningDate"] = Convert.ToDateTime(ObtaningDate.Text);
            ASPxTextBox PurchasingPrice = FindPageControl(card).FindControl("PurchasingPrice") as ASPxTextBox;
            e.NewValues["PurchasingPrice"] = float.Parse(PurchasingPrice.Text);
            ASPxTextBox SellingPrice = FindPageControl(card).FindControl("SellingPrice") as ASPxTextBox;
            e.NewValues["SellingPrice"] = float.Parse(SellingPrice.Text);

            ASPxComboBox FamilyCode = FindPageControl(card).FindControl("FamilyCode") as ASPxComboBox;
            e.NewValues["FamilyCode"] = FamilyCode.SelectedItem.Text;

            ASPxDateEdit DelivryDate = FindPageControl(card).FindControl("DelivryDate") as ASPxDateEdit;
            e.NewValues["DelivryDate"] = Convert.ToDateTime(DelivryDate.Text);

            ASPxTextBox WarantyPeriod = FindPageControl(card).FindControl("WarantyPeriod") as ASPxTextBox;
            e.NewValues["WarantyPeriod"] = float.Parse(WarantyPeriod.Text);

            ASPxTextBox StorageCondition = FindPageControl(card).FindControl("StorageCondition") as ASPxTextBox;
            e.NewValues["StorageCondition"] = StorageCondition.Text;

            ASPxTextBox SpecialPrecaution = FindPageControl(card).FindControl("SpecialPrecaution") as ASPxTextBox;
            e.NewValues["SpecialPrecaution"] = SpecialPrecaution.Text;

            ASPxComboBox StockTrakingMethodCode = FindPageControl(card).FindControl("StockTrakingMethodCode") as ASPxComboBox;
            e.NewValues["StockTrakingMethodCode"] = StockTrakingMethodCode.SelectedItem.Text;

            ASPxComboBox PackagingTypeCode = FindPageControl(card).FindControl("PackagingTypeCode") as ASPxComboBox;
            e.NewValues["PackagingTypeCode"] = PackagingTypeCode.SelectedItem.Text;

            ASPxTextBox note = FindPageControl(card).FindControl("note") as ASPxTextBox;
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

            ASPxComboBox Good = ASPxGridView4.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Good_Id"] = dr["Id"].ToString();
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


            ASPxComboBox Good = ASPxGridView4.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Good_Id"] = dr["Id"].ToString();
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

            ASPxComboBox Good = ASPxGridView3.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Good_Id"] = dr["Id"].ToString();
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

            ASPxComboBox Good = ASPxGridView3.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Good_Id"] = dr["Id"].ToString();
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

            ASPxComboBox Good = ASPxGridView2.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Id_Good"] = dr["Id"].ToString();
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

            ASPxComboBox Good = ASPxGridView2.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Id_Good"] = dr["Id"].ToString();
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


            ASPxComboBox Good = ASPxGridView1.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Good_Id"] = dr["Id"].ToString();
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


            ASPxComboBox Good = ASPxGridView1.FindEditFormLayoutItemTemplateControl("Good") as ASPxComboBox;
            cn.Open();
            string req = "select Id from Good where TypeCode= '" + Good.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(req, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                e.NewValues["Good_Id"] = dr["Id"].ToString();
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

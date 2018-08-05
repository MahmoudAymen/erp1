<%@ Page Language="C#"  MasterPageFile="~/erp.Master"  AutoEventWireup="true" CodeBehind="Adresse.aspx.cs" Inherits="erp1.Adresse1" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

 <asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style type="text/css">
         
     
    fieldset.scheduler-border {
    border: 1px groove #ddd !important;
    padding: 0 1.4em 1.4em 1.4em !important;
    margin: 0 0 1.5em 0 !important;
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
}
     
    legend.scheduler-border {
       
        
        text-align: left !important;
        width:auto;
        padding:0 10px;
        border-bottom:none;
        font-size:15px;
       
    }
    .changer{
      float:right;
      position:absolute;
      bottom:55%;
      right:13%;
  }
   .changer1
   {
      float:left;
       position:absolute;
     bottom:12%;
     left:18%;
   }
   .changer2
   {
      float:left;
      position:absolute;
     bottom:12%;
     left:28%;
   }
   div.centre {
   
    left: 50%;

     position: relative;
     bottom: 27px;
   
  
    margin-left: -100px; 
    margin-top: -100px; 
}
   .list{
       float:right;
       position:absolute;
       bottom:35%;
       left:60%;
       

   }
       
    </style>

     <form id="form1" runat="server">

     
        <div class="container" style="width:98%"  >
	         <div class="row" >
		       <div class="col-md-12">
                  <div class="card" >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"><a href="#Adresse" aria-controls="Adresse" role="tab" data-toggle="tab"> Adresse </a></li>
                   <li role="presentation"><a href="#AdresseField" aria-controls="AdresseField" role="tab" data-toggle="tab">Adresse Field</a></li>
                       <li role="presentation"><a href="#AdresseCategorie" aria-controls="AdresseCategorie" role="tab" data-toggle="tab">Adresse Categorie</a></li>
                       <li role="presentation"><a href="#NatureUsage" aria-controls="NatureUsage" role="tab" data-toggle="tab"> Nature Usage</a></li>
                                       
                                       
                                       
                    </ul>
                         
                                    <div class="tab-content"  >
                                        <div role="tabpanel" class="tab-pane active " id="Adresse" style="height:400px" >
                                          
                                            <div>
                                                
                                             
                                               <fieldset  class="scheduler-border" style="width:82%">
                                              <legend class="scheduler-border"> Choisir Categorie d'Adresse:</legend>
                                                     <div class="row">
                                               <div class="col-md-1">
                                             <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Categorie:"></dx:ASPxLabel>
                                                   </div>
                                                          <div class="col-md-4">
                                                                 <dx:ASPxComboBox ID="ASPxComboBox2"  runat="server"  DataSourceID="SqlData1" TextField="Label" AutoPostBack="True" OnSelectedIndexChanged="ASPxComboBox2_SelectedIndexChanged" Theme="Material" Width="100%" ></dx:ASPxComboBox>
                                              
                                                             
                
                                       
                                       <asp:SqlDataSource ID="SqlData1" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Label] FROM [AdresseCategorie]"></asp:SqlDataSource>
                                        </div>
                                                          <br /><br />
                                                         <br /><br />
                                                         




                                                         </div>

                                                <div class="row" >
                                             <div class="col-md-1">
                                     <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Label:"></dx:ASPxLabel>
                                               </div>
                                                      <div class="col-md-4">
                                                          <dx:ASPxComboBox ID="ASPxComboBox1"  runat="server" DataSourceID="SqlDataSource2" TextField="Label" Theme="Material" Width="100%"></dx:ASPxComboBox>

                                                         
                                                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Label] FROM [AddressField]"></asp:SqlDataSource>
                                                             
                                              
                                                </div>
                                                    
                                                    <div class="col-md-1" >
                                                       
                                                      
                                          <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Valeur:"   ></dx:ASPxLabel>
                                       </div>
                                        <div class="col-md-5">

                                            <dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server" >

                                   </dx:BootstrapTextBox>
                                          </div>
           
                                                    </div>

                                                    </fieldset>
                                                
                                                      <div class="changer1">
                                  <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Ajouter" CssClass="btn btn-primary" OnClick="ASPxButton2_Click" >
                                   </dx:ASPxButton>
                                   </div>
                                    <div class="changer2">
                                   <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Annuler" CssClass="btn btn-danger" OnClick="ASPxButton3_Click" >
                              </dx:ASPxButton>
                             </div>
            
                            <div class="changer">
                                 <dx:ASPxButton ID="ASPxButton1" runat="server" Text="+" CssClass="btn btn-primary" OnClick="ASPxButton1_Click" ></dx:ASPxButton>
                             </div>
                      <div>  
                  &nbsp;&nbsp;&nbsp;
                   </div>
                       
                           <div style="width: 530px">
                             <textarea id="TextArea1" rows="4" class="form-control" runat="server">
                                </textarea>
                                         </div>
                                                <div class="list" >
   
    
   

                                                    <asp:ListBox ID="ListBox1" runat="server" class="form-control" style="height:98px; margin-top: 25px;margin-bottom: -56px; width: 362px; margin-left: -20px;" ></asp:ListBox>


                                                </div>

        
                                                  </div>
                                            </div>
                                         <div role="tabpanel" class="tab-pane  " id="AdresseField" >

                                             <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="test11" KeyFieldName="Label" Theme="Material" style="width:100%">
                                                 <SettingsSearchPanel Visible="True" />
                                                    <Settings  ShowTitlePanel="True"  />
                                                     
                                                        <SettingsCommandButton>
                                                        <UpdateButton Text="Save">
                    
                                                            <Styles Style-ForeColor="#0b7dda">
                                                                
                                                             </Styles>
                    
                                                        </UpdateButton>
                                                             <NewButton Text="New">
                    
                                                        <Styles Style-ForeColor=" #0b7dda">
                                                           
                                                         </Styles>
                    
                                                         </NewButton>
                                                        <DeleteButton Text="Delete">
                    
                                                        <Styles Style-ForeColor="red">
                                                       
                                                          </Styles>
                    
                                                       </DeleteButton>
                                                         <CancelButton Text="Cancel">
                    
                                                          <Styles Style-ForeColor="red">
                                                          
                                                            </Styles>
                    
                                                         </CancelButton>
                                                          </SettingsCommandButton>
                                                          <SettingsBehavior ConfirmDelete="true"  allowfocusedrow="True"   />
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Adresse Field"  />
                                                 <Columns>
                                                     <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                     </dx:GridViewCommandColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Label" ReadOnly="false" VisibleIndex="1">
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="DataType" VisibleIndex="2">
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="ParentLabel" VisibleIndex="3">
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="CategorieLabel" VisibleIndex="4">
                                                     </dx:GridViewDataTextColumn>
                                                 </Columns>
                                                  <SettingsPager Mode="ShowAllRecords" />

                                <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm"   />

                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
                                   
                                  
                                    
            
                                              <EditForm  />

                                                </SettingsPopup>

           <EditFormLayoutProperties>

            <Items>
                <dx:GridViewLayoutGroup GroupBoxDecoration="None">
            <Items>
                 <dx:GridViewColumnLayoutItem ColumnName="Label" />
                 
                  <dx:GridViewColumnLayoutItem Caption="DataType" >
                         <Template>
                    <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String" Value='<%# Bind("DataType") %>' Theme="Material" Width="100%">
                    
                 <Items>
                     <dx:ListEditItem Text="Entier" Value="Entier" />
                     <dx:ListEditItem Text="String" Value="String" />
                     <dx:ListEditItem Text="Réel" Value="Réel" />
                 </Items>
                   </dx:ASPxComboBox>
           
                                
                                      
                               
                                </Template> 

                       </dx:GridViewColumnLayoutItem >
                
                  <dx:GridViewColumnLayoutItem Caption="ParentLabel" >
                         <Template>
                              <dx:ASPxComboBox ID="ASPxComboBox2" runat="server" DataSourceID="SqlDataSource1" TextField="Label" ValueType="System.String" Value='<%# Bind("ParentLabel") %>' Theme="Material" Width="100%" >
                                  </dx:ASPxComboBox>
                               
                                                             
                                </Template>
                      </dx:GridViewColumnLayoutItem>
                 <dx:GridViewColumnLayoutItem Caption="CategorieLabel" >
                         <Template>
                              <dx:ASPxComboBox ID="ASPxComboBox3" runat="server" DataSourceID="SqlDataSource3" TextField="Label" ValueType="System.String" Value='<%# Bind("CategorieLabel") %>' Theme="Material" Width="100%" >
                                  </dx:ASPxComboBox>
                                      
                                      
                               
                                </Template> 

                       </dx:GridViewColumnLayoutItem >
                       
                    </Items>
                    </dx:GridViewLayoutGroup>
            
                <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
            </Items>
               
           </EditFormLayoutProperties>


                                             </dx:ASPxGridView>


                                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Label] FROM [AddressField]"></asp:SqlDataSource>
      
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Label] FROM [AdresseCategorie]"></asp:SqlDataSource>
                                             <asp:SqlDataSource ID="test11" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AddressField] WHERE [Label] = @Label" InsertCommand="INSERT INTO [AddressField] ([Label], [DataType], [ParentLabel], [CategorieLabel]) VALUES (@Label, @DataType, @ParentLabel, @CategorieLabel)" SelectCommand="SELECT * FROM [AddressField]" UpdateCommand="UPDATE [AddressField] SET [DataType] = @DataType, [ParentLabel] = @ParentLabel, [CategorieLabel] = @CategorieLabel WHERE [Label] = @Label">
                                                 <DeleteParameters>
                                                     <asp:Parameter Name="Label" Type="String" />
                                                 </DeleteParameters>
                                                 <InsertParameters>
                                                     <asp:Parameter Name="Label" Type="String" />
                                                     <asp:Parameter Name="DataType" Type="String" />
                                                     <asp:Parameter Name="ParentLabel" Type="String" />
                                                     <asp:Parameter Name="CategorieLabel" Type="String" />
                                                 </InsertParameters>
                                                 <UpdateParameters>
                                                     <asp:Parameter Name="DataType" Type="String" />
                                                     <asp:Parameter Name="ParentLabel" Type="String" />
                                                     <asp:Parameter Name="CategorieLabel" Type="String" />
                                                     <asp:Parameter Name="Label" Type="String"/>
                                                 </UpdateParameters>
                                             </asp:SqlDataSource>

                                            </div>
                                         <div role="tabpanel" class="tab-pane  " id="AdresseCategorie" >
                                             <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="test10" KeyFieldName="Label" Theme="Material" style="width:100%">
                                                 <SettingsSearchPanel Visible="True" />
                                                 <Columns>
                                                     <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                     </dx:GridViewCommandColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Label" ReadOnly="false" VisibleIndex="1">
                                                     </dx:GridViewDataTextColumn>
                                                 </Columns>
                                                  <Settings  ShowTitlePanel="True"  />
                                                     
                                                        <SettingsCommandButton>
                                                        <UpdateButton Text="Save">
                    
                                                            <Styles Style-ForeColor="#0b7dda">
                                                                 <Style ForeColor="#0B7DDA"></Style>
                                                             </Styles>
                    
                                                        </UpdateButton>
                                                             <NewButton Text="New">
                    
                                                        <Styles Style-ForeColor=" #0b7dda">
                                                             <Style ForeColor="#0B7DDA"></Style>
                                                         </Styles>
                    
                                                         </NewButton>
                                                        <DeleteButton Text="Delete">
                    
                                                        <Styles Style-ForeColor="red">
                                                        <Style ForeColor="Red"></Style>
                                                          </Styles>
                    
                                                       </DeleteButton>
                                                         <CancelButton Text="Cancel">
                    
                                                          <Styles Style-ForeColor="red">
                                                           <Style ForeColor="Red"></Style>
                                                            </Styles>
                    
                                                         </CancelButton>
                                                          </SettingsCommandButton>
                                                          <SettingsBehavior ConfirmDelete="true"  allowfocusedrow="True"   />
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Adresse Categorie"  />
                                                 <SettingsEditing EditFormColumnCount="1"  Mode="PopupEditForm" />

                                            <SettingsEditing Mode="PopupEditForm"  />

                                          <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                            <EditForm />
                                             </SettingsPopup>
                                             </dx:ASPxGridView>
                                             <asp:SqlDataSource ID="test10" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AdresseCategorie] WHERE [Label] = @Label" InsertCommand="INSERT INTO [AdresseCategorie] ([Label]) VALUES (@Label)" SelectCommand="SELECT * FROM [AdresseCategorie]" >
                                                 <DeleteParameters>
                                                     <asp:Parameter Name="Label" Type="String" />
                                                 </DeleteParameters>
                                                 <InsertParameters>
                                                     <asp:Parameter Name="Label" Type="String" />
                                                 </InsertParameters>
                                             </asp:SqlDataSource>
                                            </div>
                                      

                                         <div role="tabpanel" class="tab-pane " id="NatureUsage" >



                                             <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="test20" KeyFieldName="Label" Theme="Material" Width="100%">
                                                 <SettingsSearchPanel Visible="True" />

                                                    <Settings  ShowTitlePanel="True"  />
                                                     
                                                        <SettingsCommandButton>
                                                        <UpdateButton Text="Save">
                    
                                                            <Styles Style-ForeColor="#0b7dda">
                                                              <Style ForeColor="#0B7DDA"></Style>
                                                             </Styles>
                    
                                                        </UpdateButton>
                                                             <NewButton Text="New">
                    
                                                        <Styles Style-ForeColor=" #0b7dda">
                                                             <Style ForeColor="#0B7DDA"></Style>
                                                         </Styles>
                    
                                                         </NewButton>
                                                        <DeleteButton Text="Delete">
                    
                                                        <Styles Style-ForeColor="red">
                                                          <Style ForeColor="Red"></Style>
                                                          </Styles>
                    
                                                       </DeleteButton>
                                                         <CancelButton Text="Cancel">
                    
                                                          <Styles Style-ForeColor="red">
                                                            <Style ForeColor="Red"></Style>
                                                            </Styles>
                    
                                                         </CancelButton>
                                                          </SettingsCommandButton>
                                                        <SettingsBehavior ConfirmDelete="true" allowfocusedrow="True" />
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Nature Usage"  />

                                                 <Columns>
                                                     <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                     </dx:GridViewCommandColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Label" ReadOnly="false" VisibleIndex="1">
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                     </dx:GridViewDataTextColumn>
                                                 </Columns>
                                                 <SettingsEditing EditFormColumnCount="1"  Mode="PopupEditForm" />

                                            <SettingsEditing Mode="PopupEditForm"  />

                                          <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                            <EditForm />
                                             </SettingsPopup>
                                             </dx:ASPxGridView>
                                             <asp:SqlDataSource ID="test20" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [NatureUsage] WHERE [Label] = @Label" InsertCommand="INSERT INTO [NatureUsage] ([Label], [Description]) VALUES (@Label, @Description)" SelectCommand="SELECT * FROM [NatureUsage]" UpdateCommand="UPDATE [NatureUsage] SET [Description] = @Description WHERE [Label] = @Label">
                                                 <DeleteParameters>
                                                     <asp:Parameter Name="Label" Type="String" />
                                                 </DeleteParameters>
                                                 <InsertParameters>
                                                     <asp:Parameter Name="Label" Type="String" />
                                                     <asp:Parameter Name="Description" Type="String" />
                                                 </InsertParameters>
                                                 <UpdateParameters>
                                                     <asp:Parameter Name="Description" Type="String" />
                                                     <asp:Parameter Name="Label" Type="String" />
                                                 </UpdateParameters>
                                             </asp:SqlDataSource>
                                        </div>


             </div>
           </div>
            </div>
           </div>
            
         </div>

    </form>
</asp:Content>


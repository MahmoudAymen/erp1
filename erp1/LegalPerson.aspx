 <%@ Page Language="C#" MasterPageFile="~/erp.Master" AutoEventWireup="true" CodeBehind="LegalPerson.aspx.cs" Inherits="erp1.LegalPerson" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

 <asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link rel="stylesheet" type="text/css" href="Styles/Style.css" />
    <form id="form1" runat="server">

         <script type="text/javascript">
             function OnFocusedCardChanged(s, e) {
                 cardLeg.GetCardValues(cardLeg.GetFocusedCardIndex(), 'LegalName;Type;Email;Initials;VATIN;Fax', OnGetCardValues);
                 grid_Event.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                 grid_Document.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                 grid_Adresse.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                 grid_Staff.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));


             }
             function OnGetCardValues(values) {
                 var editors = [LegalName, Type, Email, Initials, VATIN, Fax];
                 for (var i = 0; i < editors.length; i++) {
                     var editor = editors[i];
                     editor.SetValue(values[i]);
                 }
             }

    </script>

        <script type="text/javascript" >
            function OnUpdateClik() {
                uploader.UploadFile();
            }


               </script>
          <style type="text/css">
          @media only screen and (max-width: 480px) {
          
                    .dxtcLite_Material > .dxtc-content
              {
                      padding: 4px;
              }
           
           
              .newBotton{
          position:relative;
         top: 45vh;
         left: -2vw;
      } 
                a.dxbButtonSys > span {

              margin-left: 7%; 
          }
                 
         
               .dxtcSys.dxtc-flex > .dxtc-stripContainer, .dxtcSys.dxtc-flex > .dxtc-stripContainer .dxtc-strip
          {
             
               justify-content:flex-start;
                   width: 302px;
                   font-size: 59%;
          } 
           .dxflGroupCell_Material {
                    padding: 0 31px;
               }
              .tab-content {
                  padding: 0px !important;
              }
                 .dxcvCard_Material, .dxcvFlowCard_Material, .dxcvEmptyCard_Material, .dxcvEmptyHiddenCard_Material
              {
                      padding: 0px 0px 12px;
              }

          

          }


        
      .nav-stacked > li.active > a, .nav-stacked  > li > a:hover { color: #fff !important;}
      .nav-stacked > li > a::after {  height: 0px; position: absolute; width: 100%; transition: all 250ms ease 0s; transform: scale(0)}
      .nav-stacked > li.active > a::after, .nav-stacked > li:hover > a::after { transform: scale(1); }

      .tab-pane { padding: 0px 0 }
      .tab-content{padding:0px}
      .card {background: #FFF none repeat scroll 0% 0%; box-shadow: 0px 0px 0px;margin-bottom: 30px; }
     

      .card {background: #FFF }
          body {
              padding: 0px;
          }


         .widht{
              width:50% !important
          }   
           .dxcvSearchPanel_Material {
                  padding: 0px 0 0px;
          }
          .dxtcSys.dxtc-flex > .dxtc-stripContainer, .dxtcSys.dxtc-flex > .dxtc-stripContainer .dxtc-strip
          {
             
               justify-content:center
                  
          }
          a.balise_a:hover{
              background-color:gray;
          }
          .dxcvCard_Material, .dxcvFlowCard_Material, .dxcvEmptyCard_Material, .dxcvEmptyHiddenCard_Material
          {
                  padding: 0px 0px 0px;
          }
            #D1
            {
             border-collapse:separate;
             border-spacing:8px;
             width:35%;
            
             
          
            }
              #D2
            {
             border-collapse:separate;
             border-spacing:8px;
             width:15%;
            
             
             
          
            }
                  #D3
            {
             border-collapse:separate;
             border-spacing:8px;
             width:35%;
            
             
             
          
            }
         </style>

                <div class="container" style="width:100%" >
	         <div class="row" >
		       <div class="col-md-12">
                  <div class="card"  >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"> <a href="#LegalPerson" aria-controls="LegalPerson" role="tab" data-toggle="tab">  </a></li>
                                    
                    </ul>
                       <div class="tab-content"  >
                                 <div role="tabpanel" class="tab-pane active " id="LegalPerson"  >

                                     <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="legData" ClientInstanceName="cardLeg" EnableTheming="True" KeyFieldName="Id" Theme="Material" OnCardInserting="ASPxCardView1_CardInserting" Width="100%" OnCardUpdating="ASPxCardView1_CardUpdating" >
                                         <SettingsSearchPanel Visible="True" />
                                          <ClientSideEvents FocusedCardChanged="OnFocusedCardChanged" />
                                   
                                        
                                            
                                         
                                                        <SettingsCommandButton>
                                                            
                                                             <NewButton Text="New" Styles-Style-CssClass="newBotton">

                    
                                                        <Styles Style-ForeColor=" #0b7dda">
                                                             <Style ForeColor="#0B7DDA"></Style>
                                                         </Styles>
                     
                                                         </NewButton>
                                                             <EditButton Text="Edit" Styles-Style-CssClass="updateButton">
                    
                                                                  <Styles>
                                                            <Style CssClass="updateButton"></Style>
                                                                  </Styles>

                    
                                                            
                    
                                                         </EditButton>
                                                                
                                                        <DeleteButton Text="Delete" Styles-Style-CssClass="DeleteButton">
                    
                                                        <Styles Style-ForeColor="red">
                                                        <Style ForeColor="Red"></Style>
                                                          </Styles>
                    
                                                       </DeleteButton>
                                                        
                                                          </SettingsCommandButton>
                                                          <SettingsBehavior AllowFocusedCard="true" ConfirmDelete="true"  />
                                 

                                    


                                         <Columns>
                                             <dx:CardViewTextColumn FieldName="Id" ReadOnly="True" Visible="False">
                                             </dx:CardViewTextColumn>
                                        <dx:CardViewImageColumn FieldName="IdentificationDocScan" >
                                                  <PropertiesImage ImageHeight="150px"  ImageUrlFormatString="~/Image/{0}" ImageWidth="160px">
                                                  </PropertiesImage>
                                              </dx:CardViewImageColumn>
                                             
                                             <dx:CardViewTextColumn FieldName="Type"  Visible="false">
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="LegalName" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="Initials"  Visible="false">
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="Fax"  Visible="false">
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="Tel" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="Email" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="VATIN"  Visible="false">
                                             </dx:CardViewTextColumn>
                                            
                                         </Columns>
                                         <CardLayoutProperties>
                                             <Items>
                                                 <dx:CardViewCommandLayoutItem HorizontalAlign="Right" ShowDeleteButton="True" ShowEditButton="True" ShowNewButton="True">
                                                 </dx:CardViewCommandLayoutItem>
                                                  <dx:CardViewColumnLayoutItem ColumnName="IdentificationDocScan" ShowCaption="False" HorizontalAlign="Center">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="LegalName" ShowCaption="False" HorizontalAlign="Center">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="Tel" ShowCaption="False" HorizontalAlign="Center">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="Email" ShowCaption="False" HorizontalAlign="Center">
                                                 </dx:CardViewColumnLayoutItem>
                                                
                                                 <dx:EditModeCommandLayoutItem HorizontalAlign="Right">
                                                 </dx:EditModeCommandLayoutItem>
                                             </Items>
                                         </CardLayoutProperties>



                                            

                                     <SettingsEditing  Mode="PopupEditForm" />
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                             <EditFormLayoutProperties>

                                              <Items>

                                                  <dx:CardViewLayoutGroup GroupBoxDecoration="None">

                                                      <Items>
                                                          <dx:CardViewColumnLayoutItem ColumnName="LegalName">

                                                          </dx:CardViewColumnLayoutItem>
                                                           <dx:CardViewColumnLayoutItem Caption="Type">
                                                               <Template>
                                                         <dx:ASPxComboBox ID="x" runat="server" DataSourceID="SqlDataSource22" TextField="Code" Value='<%# Bind("Type") %>' Theme="Material" Width="100%">

                                                     </dx:ASPxComboBox>
                               
                                                      <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [LegalPersonType]"></asp:SqlDataSource>
                                                              </Template>

                                                          </dx:CardViewColumnLayoutItem>
                                                          <dx:CardViewColumnLayoutItem  ColumnName="Initials">

                                                          </dx:CardViewColumnLayoutItem>
                                                          <dx:CardViewColumnLayoutItem ColumnName="VATIN">

                                                          </dx:CardViewColumnLayoutItem>
                                                           <dx:CardViewColumnLayoutItem ColumnName="Email">

                                                          </dx:CardViewColumnLayoutItem>
                                                           <dx:CardViewColumnLayoutItem ColumnName="Tel">

                                                          </dx:CardViewColumnLayoutItem>
                                                           <dx:CardViewColumnLayoutItem ColumnName="Fax">

                                                          </dx:CardViewColumnLayoutItem>
                                                            <dx:CardViewColumnLayoutItem Caption="ImageLegalPerson">
                                                              <Template>
                                                                  <dx:ASPxUploadControl ID="ASPxUploadControl1" ClientInstanceName="uploader" runat="server" UploadMode="Auto" Width="100%" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete" Theme="Material" >
                                                                         <ValidationSettings AllowedFileExtensions=".jpg, .png" MaxFileSize="4000000">
                                                                         </ValidationSettings>
                                                                         <ClientSideEvents FileUploadComplete="function(s, e) {  if (e.isValid) {cardLeg.UpdateEdit();}}" />
                                                                      
                                                                       </dx:ASPxUploadControl>
                                                                                  <b><a class="balise_a" href="#" style="color: #0b7dda;float:left;position:absolute;bottom:0%;left:84%" onclick="OnUpdateClik()">Save</a></b> 
                                                                                  <b><a class="balise_a" href="~/LegalPerson.aspx" style="color:#f00;float:left;position:absolute;bottom:0%;left:92%" runat="server">Cancel</a></b> 
                                                 
                                                              </Template>


                                                          </dx:CardViewColumnLayoutItem>
                                      
                                                      </Items>

                                                  </dx:CardViewLayoutGroup>
                                              </Items>

                                          </EditFormLayoutProperties>





                                     </dx:ASPxCardView>

                                     

           <div class="panel-group" id="accordion" style="    padding-top: 5px;  width: 100%;background: #eee;">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"> <i class="fa fa-building"></i> Legal Information</a>
        </h4>
      </div>
	  
	  
	  
	  
	  
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body">
            <dx:ASPxPageControl ID="pageControl" runat="server" ActiveTabIndex="3" Theme="Material" Width="100%" >
                                                      <TabPages>
                                                          <dx:TabPage Text="Detail1">
                                                              <ContentCollection>
                                                                  <dx:ContentControl runat="server"  >
                                                                      <table id="D1" >
                                                                          <tr>
                                                                              <td>
                                                                                 <dx:ASPxLabel  runat="server"  Text="LegalName:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="LegalName" ClientInstanceName="LegalName" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="Type:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="Type" ClientInstanceName="Type" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                          
                                                                         

                                                                      </table>
                                                                      
                                                                      </dx:ContentControl>
                                                                  </ContentCollection>
                                                              </dx:TabPage>

                                                           <dx:TabPage Text="Detail2">
                                                              <ContentCollection>
                                                                  <dx:ContentControl runat="server"  >
                                                                      <table id="D2">
                                                                            <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="Email:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="Email" ClientInstanceName="Email" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                          <tr >
                                                                              <td>
                                                                                 <dx:ASPxLabel  runat="server"  Text="Initials:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="Initials" ClientInstanceName="Initials" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                         

                                                                      </table>
                                                                      
                                                                      </dx:ContentControl>
                                                                  </ContentCollection>
                                                               </dx:TabPage>
                                                           <dx:TabPage Text="Detail3">
                                                              <ContentCollection>
                                                                  <dx:ContentControl runat="server"  >
                                                                      <table id="D3">
                                                                             
                                                                            <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="VATIN:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="VATIN" ClientInstanceName="VATIN" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="Fax:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="Fax" ClientInstanceName="Fax" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                         

                                                                      </table>
                                                                      
                                                                      </dx:ContentControl>
                                                                  </ContentCollection>
                                                                    </dx:TabPage>
                                                          




                                                          </TabPages>
                                         </dx:ASPxPageControl>
                                   
		</div>
      </div>
    </div>

  <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"> <span class="glyphicon glyphicon-list-alt"></span> Legal Detail</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">

            
                                              <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" EnableTheming="True" Theme="Material" Width="100%">
                                                               <TabPages >
                                                             
                                                               <dx:TabPage Text="CV" Visible="true" >
                                                                          <ContentCollection >
                                                                         <dx:ContentControl runat="server">
                                                                             <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="test" Theme="Material" AutoGenerateColumns="False" KeyFieldName="Id"    ClientInstanceName="grid_Event" OnCustomCallback="ASPxGridView1_CustomCallback" OnLoad="ASPxGridView1_Load" Width="100%" OnRowInserting="ASPxGridView1_RowInserting" OnRowUpdating="ASPxGridView1_RowUpdating">

                                                                                   <settingspager pagesize="50" numericbuttoncount="1" />

                                                                                  <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>

                                                                              
                                                                                 <Settings ShowGroupPanel="True" />
                                                                                 <SettingsBehavior AllowFocusedRow="True"  ConfirmDelete="True" />

                                                                                 <Columns>
                                                                                    
                                                                                     <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" ShowInCustomizationForm="True" Visible="false">
                                                                                         <EditFormSettings Visible="False" />
                                                                                     </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="Event_Id" ShowInCustomizationForm="True" Visible="false">
                                                                                     </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="LegalPersonn_Id" ShowInCustomizationForm="True" Visible="false">
                                                                                     </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="Adresse_Id" ShowInCustomizationForm="True" Visible="false">
                                                                                     </dx:GridViewDataTextColumn>
                                            
                                                                                     <dx:GridViewDataTextColumn FieldName="ownerType" ShowInCustomizationForm="True" Visible="false" >
                                                                                     </dx:GridViewDataTextColumn>
                                                                                      <dx:GridViewDataTextColumn FieldName="EventFamilly_Id" ShowInCustomizationForm="True" VisibleIndex="0"  >
                                                                                     </dx:GridViewDataTextColumn>
                                                                                      <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="6" AdaptivePriority="2">
                                                                                     </dx:GridViewCommandColumn>
                                                                                      <dx:GridViewDataTextColumn FieldName="IdEventNature" ShowInCustomizationForm="True" VisibleIndex="1" AdaptivePriority="3">
                                                                                     </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="Description" ShowInCustomizationForm="True" VisibleIndex="2"  AdaptivePriority="4">
                                                                                     </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataDateColumn FieldName="DateEvent"  VisibleIndex="3" AdaptivePriority="1" >
                                                                                     </dx:GridViewDataDateColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="Doc" ShowInCustomizationForm="True" VisibleIndex="4" AdaptivePriority="5">
                                                                                     </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="Duree" ShowInCustomizationForm="True" VisibleIndex="5" AdaptivePriority="6">
                                                                                     </dx:GridViewDataTextColumn>
                                                                                    
                                                                                 </Columns>
                                                                                    <SettingsEditing  Mode="PopupEditForm" />
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                             <EditFormLayoutProperties>

                                              <Items>
                                              <dx:GridViewLayoutGroup GroupBoxDecoration="None">

                                                      <Items>
                                                           <dx:GridViewColumnLayoutItem Caption="Event">
                                                               <Template>
                                                                       <dx:ASPxComboBox ID="Event" runat="server" DataSourceID="SqlDataSource22" TextField="Id" Value='<%# Bind("Event_Id") %>' Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                      <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Id] FROM [Event]"></asp:SqlDataSource>
                                                               </Template>
                                                          </dx:GridViewColumnLayoutItem>
                                                            <dx:GridViewColumnLayoutItem Caption="LegalPerson">
                                                                 <Template>
                                                                       <dx:ASPxComboBox ID="PersonnePysique" runat="server" DataSourceID="SqlDataSource4" TextField="LegalName" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [LegalName] FROM [LegalPerson]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                         
                                                          <dx:GridViewColumnLayoutItem Caption="Adresse">
                                                              <Template>
                                                                 
                                                     <dx:ASPxComboBox ID="Adresse" runat="server" DataSourceID="SqlDataSource3" TextField="Code"  Theme="Material" Width="100%">

                                                     </dx:ASPxComboBox>
                               
                                                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [Adresse]"></asp:SqlDataSource>
                                                              </Template>


                                                          </dx:GridViewColumnLayoutItem>
                                                          <dx:GridViewColumnLayoutItem  ColumnName="Duree">

                                                          </dx:GridViewColumnLayoutItem>
                                                          <dx:GridViewColumnLayoutItem ColumnName="ownerType">

                                                          </dx:GridViewColumnLayoutItem>
                                      
                                                      </Items>

                                                  </dx:GridViewLayoutGroup>
                                                  <dx:EditModeCommandLayoutItem HorizontalAlign="Right">

                                                  </dx:EditModeCommandLayoutItem>
                                              </Items>

                                          </EditFormLayoutProperties>


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
                                                     
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?"  />
                                                                          
                                                                             </dx:ASPxGridView>
                                                                     

                                                                           

                                                                              </dx:ContentControl>
                                                                          </ContentCollection>
                                                                      </dx:TabPage>

                                  


                                                                      <dx:TabPage Text="Document d'identite" Visible="true">
                                                                          <ContentCollection>
                                                                              <dx:ContentControl runat="server">


                                                                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid_Document" DataSourceID="test16" KeyFieldName="Id" Theme="Material" OnCustomCallback="ASPxGridView2_CustomCallback" OnLoad="ASPxGridView2_Load"  Width="100%" OnRowInserting="ASPxGridView2_RowInserting" OnRowUpdating="ASPxGridView2_RowUpdating">
                                                                                <settingspager pagesize="50" numericbuttoncount="7" />

                                                                                  <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>

                                                                              
                                                                                <Settings ShowGroupPanel="True" />
                                                                                 <SettingsBehavior AllowFocusedRow="True"  ConfirmDelete="True" />
                                                                                
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
                                                    
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?"  />

                                                                                <Columns>
                                                                                  
                                                                                    <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" ShowInCustomizationForm="True" Visible="false">
                                                                                        <EditFormSettings Visible="False" />
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="LegalPersonn_Id" ShowInCustomizationForm="True" Visible="false">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="PartnerDocs_Id" ShowInCustomizationForm="True" Visible="false">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="ownerType" ShowInCustomizationForm="True" Visible="false">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                      <dx:GridViewDataImageColumn FieldName="DocScan" VisibleIndex="0"  >
                                                                                       <PropertiesImage ImageHeight="150px" ImageWidth="140px" ImageUrlFormatString="~/Image/{0}">
                                
                                                                                          </PropertiesImage>
                                                                                           </dx:GridViewDataImageColumn>
                                                                                      <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="7" AdaptivePriority="1" >
                                                                                    </dx:GridViewCommandColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="IdentityDocType_Id" ShowInCustomizationForm="True" VisibleIndex="1" AdaptivePriority="2" >
                                                                                    </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="DocRef" ShowInCustomizationForm="True" VisibleIndex="2" AdaptivePriority="3" >
                                                                                    </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="DocCountryOfIssue" ShowInCustomizationForm="True" VisibleIndex="3" AdaptivePriority="4" >
                                                                                    </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="DocAuthorotyOfIssue" ShowInCustomizationForm="True" VisibleIndex="4" AdaptivePriority="5">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                      <dx:GridViewDataDateColumn FieldName="DocDateOfIssue" ShowInCustomizationForm="True" VisibleIndex="5" AdaptivePriority="6" >
                                                                                    </dx:GridViewDataDateColumn>
                                                                                      <dx:GridViewDataDateColumn FieldName="DocExpiryOfIssue" ShowInCustomizationForm="True" VisibleIndex="6"  AdaptivePriority="7">
                                                                                    </dx:GridViewDataDateColumn>
                                                    
                                                                                     
                                                                                </Columns>

                                                                      
                                                
                                     <SettingsEditing  Mode="PopupEditForm" />
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                                 
                                          <EditFormLayoutProperties>

                                              <Items>

                                                  <dx:GridViewLayoutGroup GroupBoxDecoration="None">

                                                      <Items>
                                                           
                                                            <dx:GridViewColumnLayoutItem Caption="LegalPerson">
                                                                 <Template>
                                                                       <dx:ASPxComboBox ID="PersonnePysique" runat="server" DataSourceID="SqlDataSource4" TextField="LegalName" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [LegalName] FROM [LegalPerson]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                         

                                                       
                                                          <dx:GridViewColumnLayoutItem   Caption="PartnerDocs">
                                                               <Template>
                                                                       <dx:ASPxComboBox ID="PartnerDocs" runat="server" DataSourceID="SqlDataSource5" TextField="DocRef" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [DocRef] FROM [PartnerDocs]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                          <dx:GridViewColumnLayoutItem ColumnName="ownerType">

                                                          </dx:GridViewColumnLayoutItem>
                                      
                                                      </Items>

                                                  </dx:GridViewLayoutGroup>
                                                  <dx:EditModeCommandLayoutItem HorizontalAlign="Right">

                                                  </dx:EditModeCommandLayoutItem>
                                              </Items>

                                          </EditFormLayoutProperties>                                      
                                                                                  


                                                                            </dx:ASPxGridView>
                                                 
                                   
                                                                              </dx:ContentControl>
                                                                          </ContentCollection>
                                                                      </dx:TabPage>

                                                                      <dx:TabPage Text="Adresse" Visible="true">
                                                                          <ContentCollection>
                                                                              <dx:ContentControl runat="server">


                                                                                  <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="test17" KeyFieldName="Id" Theme="Material"  ClientInstanceName="grid_Adresse" OnCustomCallback="ASPxGridView3_CustomCallback" OnLoad="ASPxGridView3_Load" Width="100%" OnRowInserting="ASPxGridView3_RowInserting" OnRowUpdating="ASPxGridView3_RowUpdating" >

                                                                                   <settingspager pagesize="50" numericbuttoncount="3" />

                                                                                  <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>

                                                                               
                                                                              
                                                                                 <SettingsBehavior AllowFocusedRow="True"  ConfirmDelete="True" />
                                                                                        <Settings ShowGroupPanel="True" />

                                                                                      <Columns>
                                                                                          <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="7" AdaptivePriority="2">
                                                                                          </dx:GridViewCommandColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Adresse_Id" ShowInCustomizationForm="True" VisibleIndex="6" Visible="false">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="LegalPersonn_Id" ShowInCustomizationForm="True" VisibleIndex="5" Visible="false">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4" Visible="false">
                                                                                              <EditFormSettings Visible="False" />
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="NatureUsage_Label" ShowInCustomizationForm="True" VisibleIndex="0">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataDateColumn FieldName="date_debut" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                                          </dx:GridViewDataDateColumn>
                                                                                          <dx:GridViewDataDateColumn FieldName="date_fin" ShowInCustomizationForm="True" VisibleIndex="3" AdaptivePriority="1">
                                                                                          </dx:GridViewDataDateColumn>
                                                                                           <dx:GridViewDataTextColumn FieldName="Code" ShowInCustomizationForm="True" VisibleIndex="1" >
                                                                                           
                                                                                          </dx:GridViewDataTextColumn>

                                                                                      </Columns>


                                                                                                                
                                                 
                                     <SettingsEditing  Mode="PopupEditForm" />
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>

                                                    <EditFormLayoutProperties>

                                              <Items>

                                                 <dx:GridViewLayoutGroup GroupBoxDecoration="None">

                                                      <Items>
                                                           
                                                            <dx:GridViewColumnLayoutItem  Caption="Adresse">
                                                                  <Template>
                                                                       <dx:ASPxComboBox ID="Adresse" runat="server" DataSourceID="SqlDataSource6" TextField="Code" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [Adresse]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                         

                                                       
                                                         <dx:GridViewColumnLayoutItem Caption="LegalPerson">
                                                                 <Template>
                                                                       <dx:ASPxComboBox ID="PersonnePysique" runat="server" DataSourceID="SqlDataSource4" TextField="LegalName" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [LegalName] FROM [LegalPerson]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                          <dx:GridViewColumnLayoutItem Caption="NatureUsage_Label">
                                                                <Template>
                                                                       <dx:ASPxComboBox ID="NLabel" runat="server" DataSourceID="SqlDataSource8" TextField="Label" Value='<%# Bind("NatureUsage_Label") %>' Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Label] FROM [NatureUsage]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                            <dx:GridViewColumnLayoutItem ColumnName="date_debut">

                                                          </dx:GridViewColumnLayoutItem>
                                                            <dx:GridViewColumnLayoutItem ColumnName="date_fin">
                                                          </dx:GridViewColumnLayoutItem>
                                      
                                                      </Items>

                                                  </dx:GridViewLayoutGroup>
                                                  <dx:EditModeCommandLayoutItem HorizontalAlign="Right">

                                                  </dx:EditModeCommandLayoutItem>
                                              </Items>

                                          </EditFormLayoutProperties>      
                                                        

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
                                                    
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?"  />

                                                                                  </dx:ASPxGridView>
                          

                                                            
                          

                                                                              </dx:ContentControl>
                                                                          </ContentCollection>
                                                                      </dx:TabPage>


                                                                   <dx:TabPage Text="Staff" Visible="true">
                                                                          <ContentCollection>
                                                                              <dx:ContentControl runat="server">
                                                                                  
                                                                              
                                                           
                                                                                  <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" DataSourceID="staff" KeyFieldName="Id" Theme="Material" ClientInstanceName="grid_Staff" OnCustomCallback="ASPxGridView4_CustomCallback" OnLoad="ASPxGridView4_Load"  Width="100%" OnRowInserting="ASPxGridView4_RowInserting" OnRowUpdating="ASPxGridView4_RowUpdating">

                                                                                      <Settings ShowGroupPanel="True" />
                                                                                      
                                                                                   <settingspager pagesize="50" numericbuttoncount="3" />

                                                                                  <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>

                                                                               
                                                                              
                                                                                
                                                                                      

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
                                                      <SettingsBehavior ConfirmDelete="true"  allowfocusedrow="True"  />
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?"  />

                                                                                      <Columns>
                                                                                          <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="5" AdaptivePriority="4">
                                                                                          </dx:GridViewCommandColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1"  Visible="false">
                                                                                              <EditFormSettings Visible="False" />
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="LegalPersonn_Id" ShowInCustomizationForm="True" VisibleIndex="2" Visible="false">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="ownerType" ShowInCustomizationForm="True" VisibleIndex="3"  Visible="false">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Staff_Id" ShowInCustomizationForm="True" VisibleIndex="4"  Visible="false">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="PositionId" ShowInCustomizationForm="True" VisibleIndex="0" >
                                                                                          </dx:GridViewDataTextColumn>
                                                                                           <dx:GridViewDataTextColumn FieldName="PositionValue" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                         
                                                                                            <dx:GridViewDataTextColumn FieldName="InService" ShowInCustomizationForm="True" VisibleIndex="3" AdaptivePriority="1">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                            <dx:GridViewDataDateColumn FieldName="PositionStartDate" ShowInCustomizationForm="True" VisibleIndex="3" AdaptivePriority="2">
                                                                                          </dx:GridViewDataDateColumn>
                                                                                            <dx:GridViewDataDateColumn FieldName="PositionEndDate" ShowInCustomizationForm="True" VisibleIndex="4" AdaptivePriority="3">
                                                                                          </dx:GridViewDataDateColumn>
                                                                                      </Columns>
                                                                                      <SettingsEditing  Mode="PopupEditForm" />
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                                                                       <EditFormLayoutProperties>
                                               <Items>
                                      <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                        <Items>
                                              <dx:GridViewColumnLayoutItem  Caption="LegalPersonn">
                                                      <Template>
                                                                       <dx:ASPxComboBox ID="LegalPersonn" runat="server" DataSourceID="tr" TextField="LegalName"  Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="tr" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [LegalName] FROM [LegalPerson]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                         

                                                       
                                                          <dx:GridViewColumnLayoutItem  ColumnName="ownerType">

                                                          </dx:GridViewColumnLayoutItem>
                                                          <dx:GridViewColumnLayoutItem  Caption="Staff">
                                                               <Template>
                                                                       <dx:ASPxComboBox ID="Staff" runat="server" DataSourceID="SqlDataSource10" TextField="PositionId"  Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [PositionId] FROM [Staff]"></asp:SqlDataSource>
                                                               </Template>


                                                          </dx:GridViewColumnLayoutItem>
                                        </Items>

                                    </dx:GridViewLayoutGroup>
                                     <dx:EditModeCommandLayoutItem HorizontalAlign="Right">

                                                  </dx:EditModeCommandLayoutItem>
                                </Items>
                            </EditFormLayoutProperties>

                                                                                  </dx:ASPxGridView>

                                                                        </dx:ContentControl>
                                                                          </ContentCollection>
                                                                       </dx:TabPage>
                                                                  </TabPages>

                                                  
                                                              </dx:ASPxPageControl>
        </div>
      </div>
    </div>
      
      </div>

                                    






                                       <asp:SqlDataSource ID="test" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectationEvent] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectationEvent] ([Event_Id], [LegalPersonn_Id], [Adresse_Id], [Duree], [ownerType]) VALUES (@Event_Id, @LegalPersonn_Id, @Adresse_Id, @Duree, @ownerType)" SelectCommand="SELECT * FROM AffectationEvent,Event WHERE (Event.Id = AffectationEvent.Event_Id AND AffectationEvent.LegalPersonn_Id=@Id)" UpdateCommand="UPDATE [AffectationEvent] SET [Event_Id] = @Event_Id, [LegalPersonn_Id] = @LegalPersonn_Id, [Adresse_Id] = @Adresse_Id, [Duree] = @Duree, [ownerType] = @ownerType WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Event_Id" Type="Int32" />
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="Duree" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                     </InsertParameters>
                                         <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Event_Id" Type="Int32" />
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="Duree" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>
                           

                                     
                                                 
                                 <asp:SqlDataSource ID="test16" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectaionDocument] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectaionDocument] ([LegalPersonn_Id], [PartnerDocs_Id], [ownerType]) VALUES (@LegalPersonn_Id, @PartnerDocs_Id, @ownerType)" SelectCommand="SELECT * FROM AffectaionDocument,PartnerDocs WHERE(PartnerDocs.Id=AffectaionDocument.PartnerDocs_Id AND AffectaionDocument.LegalPersonn_Id=@Id )" UpdateCommand="UPDATE [AffectaionDocument] SET [LegalPersonn_Id] = @LegalPersonn_Id, [PartnerDocs_Id] = @PartnerDocs_Id, [ownerType] = @ownerType WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="PartnerDocs_Id" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                     </InsertParameters>
                                       <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="PartnerDocs_Id" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>

                                                

                                                

                                               
                                 <asp:SqlDataSource ID="test17" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectationAdresse] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectationAdresse] ([Adresse_Id], [LegalPersonn_Id], [NatureUsage_Label], [date_debut], [date_fin]) VALUES (@Adresse_Id, @LegalPersonn_Id, @NatureUsage_Label, @date_debut, @date_fin)" SelectCommand="SELECT * FROM AffectationAdresse,Adresse WHERE (Adresse.Id = AffectationAdresse.Adresse_Id AND AffectationAdresse.LegalPersonn_Id=@Id)" UpdateCommand="UPDATE [AffectationAdresse] SET [Adresse_Id] = @Adresse_Id, [LegalPersonn_Id] = @LegalPersonn_Id, [NatureUsage_Label] = @NatureUsage_Label, [date_debut] = @date_debut, [date_fin] = @date_fin WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="NatureUsage_Label" Type="String" />
                                         <asp:Parameter DbType="Date" Name="date_debut" />
                                         <asp:Parameter DbType="Date" Name="date_fin" />
                                     </InsertParameters>
                                      <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="NatureUsage_Label" Type="String" />
                                         <asp:Parameter DbType="Date" Name="date_debut" />
                                         <asp:Parameter DbType="Date" Name="date_fin" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>
                                       <asp:SqlDataSource ID="staff" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectaionStaff] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectaionStaff] ( [LegalPersonn_Id], [ownerType], [Staff_Id]) VALUES ( @LegalPersonn_Id, @ownerType, @Staff_Id)" SelectCommand="SELECT * FROM AffectaionStaff,Staff WHERE (Staff.Id = AffectaionStaff.Staff_Id AND AffectaionStaff.LegalPersonn_Id=@Id)" UpdateCommand="UPDATE [AffectaionStaff] SET [LegalPersonn_Id] = @LegalPersonn_Id, [ownerType] = @ownerType, [Staff_Id] = @Staff_Id WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                  
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Staff_Id" Type="Int64" />
                                     </InsertParameters>
                                            <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="LegalPersonn_Id" Type="Int64" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Staff_Id" Type="Int64" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>

                                   

                                     <asp:SqlDataSource ID="legData" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [LegalPerson] WHERE [Id] = @Id" InsertCommand="INSERT INTO [LegalPerson] ([Type], [LegalName], [Initials], [Fax], [Tel], [Email], [VATIN], [IdentificationDocScan]) VALUES (@Type, @LegalName, @Initials, @Fax, @Tel, @Email, @VATIN, @IdentificationDocScan)" SelectCommand="SELECT [Id], [Type], [LegalName], [Initials], [Fax], [Tel], [Email], [VATIN], [IdentificationDocScan] FROM [LegalPerson]" UpdateCommand="UPDATE [LegalPerson] SET [Type] = @Type, [LegalName] = @LegalName, [Initials] = @Initials, [Fax] = @Fax, [Tel] = @Tel, [Email] = @Email, [VATIN] = @VATIN, [IdentificationDocScan] = @IdentificationDocScan WHERE [Id] = @Id">
                                         <DeleteParameters>
                                             <asp:Parameter Name="Id" Type="Int64" />
                                         </DeleteParameters>
                                         <InsertParameters>
                                             <asp:Parameter Name="Type" Type="String" />
                                             <asp:Parameter Name="LegalName" Type="String" />
                                             <asp:Parameter Name="Initials" Type="String" />
                                             <asp:Parameter Name="Fax" Type="String" />
                                             <asp:Parameter Name="Tel" Type="String" />
                                             <asp:Parameter Name="Email" Type="String" />
                                             <asp:Parameter Name="VATIN" Type="String" />
                                             <asp:Parameter Name="IdentificationDocScan" Type="String" />
                                         </InsertParameters>
                                         <UpdateParameters>
                                             <asp:Parameter Name="Type" Type="String" />
                                             <asp:Parameter Name="LegalName" Type="String" />
                                             <asp:Parameter Name="Initials" Type="String" />
                                             <asp:Parameter Name="Fax" Type="String" />
                                             <asp:Parameter Name="Tel" Type="String" />
                                             <asp:Parameter Name="Email" Type="String" />
                                             <asp:Parameter Name="VATIN" Type="String" />
                                             <asp:Parameter Name="IdentificationDocScan" Type="String" />
                                             <asp:Parameter Name="Id" Type="Int64" />
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

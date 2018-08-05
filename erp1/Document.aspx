<%@ Page Language="C#" MasterPageFile="~/erp.Master" AutoEventWireup="true" CodeBehind="Document.aspx.cs" Inherits="erp1.Document" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

    <asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <script type="text/javascript" >
            function OnUpdateClik() {
                uploader.UploadFile();
            }


               </script>

        <style type="text/css">
          
        </style>
          <div class="container" style="width:98%" >
	         <div class="row">
		       <div class="col-md-12" >
                  <!-- Nav tabs --><div class="card"  >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"><a href="#PartnerDocs" aria-controls="PartnerDocs" role="tab" data-toggle="tab"> Partner Docs </a></li>
                   <li role="presentation"><a href="#IdentityDocType" aria-controls="IdentityDocType" role="tab" data-toggle="tab">Identity DocType</a></li>
                                       
                                       
                    </ul>
                          <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="PartnerDocs" >
                                            
                                          
                                        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="test5" ClientInstanceName="grid" KeyFieldName="Id" Theme="Material" OnRowInserting="ASPxGridView2_RowInserting" OnRowUpdating="ASPxGridView2_RowUpdating" Width="800px" >
                                            <SettingsSearchPanel Visible="True" />
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                </dx:GridViewCommandColumn>
                                                <dx:GridViewDataTextColumn FieldName="Id" VisibleIndex="1" ReadOnly="True">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataImageColumn FieldName="DocScan" VisibleIndex="2">
                                                    <PropertiesImage ImageHeight="50px" ImageUrlFormatString="~/Image/{0}" ImageWidth="50px">
                                                        <EmptyImage IconID="businessobjects_bocontact2_16x16">
                                                        </EmptyImage>
                                                    </PropertiesImage>
                                                </dx:GridViewDataImageColumn>
                                                <dx:GridViewDataTextColumn FieldName="IdentityDocType_Id" VisibleIndex="3">
                                                   <EditFormSettings Visible="False" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="DocRef" VisibleIndex="4">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="DocCountryOfIssue" VisibleIndex="5">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="DocAuthorotyOfIssue" VisibleIndex="6">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataDateColumn FieldName="DocDateOfIssue" VisibleIndex="7">
                                                </dx:GridViewDataDateColumn>
                                                <dx:GridViewDataDateColumn FieldName="DocExpiryOfIssue" VisibleIndex="8">
                                                </dx:GridViewDataDateColumn>
                                                
                                            </Columns>

                                      <SettingsEditing  Mode="PopupEditForm" />

                                            <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm"  />

                                          <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                            <EditForm />
                                             </SettingsPopup>
                                       <EditFormLayoutProperties>
                                          <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                               <Items>
                                                
                                                      
                
                                                       <dx:GridViewColumnLayoutItem Caption="IdentityDocType" >

                                                              <Template>
                        
                                                      <dx:ASPxComboBox ID="Code" runat="server" DataSourceID="test6" TextField="Code"  Theme="Material" Width="100%">

                                                      </dx:ASPxComboBox>
                                                                    <asp:SqlDataSource ID="test6" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [IdentityDocType]"></asp:SqlDataSource>
                                                        </Template> 

                                                     </dx:GridViewColumnLayoutItem >
                                                     <dx:GridViewColumnLayoutItem ColumnName="DocRef"  />
                     
                                                    <dx:GridViewColumnLayoutItem ColumnName="DocCountryOfIssue"  />

                                                <dx:GridViewColumnLayoutItem ColumnName="DocAuthorotyOfIssue" />
                                                   <dx:GridViewColumnLayoutItem ColumnName="DocDateOfIssue" />
                                              <dx:GridViewColumnLayoutItem ColumnName="DocExpiryOfIssue" />
                                                       <dx:GridViewColumnLayoutItem ColumnName="DocScan">
                                                           <Template>
                                                                  <dx:ASPxUploadControl ID="ASPxUploadControl1" ClientInstanceName="uploader" runat="server" UploadMode="Auto" Width="100%" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete" Theme="Material" >
                                                                         <ValidationSettings AllowedFileExtensions=".jpg, .png" MaxFileSize="4000000">
                                                                         </ValidationSettings>
                                                                         <ClientSideEvents FileUploadComplete="function(s, e) {  if (e.isValid) {grid.UpdateEdit();}}" />
                                                                      
                                                                       </dx:ASPxUploadControl>
                                                                        
                                                                    <a href="#" style="color: #0b7dda;float:left;position:absolute;bottom:0%;left:84%" onclick="OnUpdateClik()">Save</a>
                                                                    <a href="~/Document.aspx" style="color:#f00;float:left;position:absolute;bottom:0%;left:92%" runat="server">Cancel</a>
             
                                                           </Template>
                                                           
                                                       
	
                                                          
                                                                    

                                                       </dx:GridViewColumnLayoutItem>
                                               
                                                 </Items>
                                                  
                                                </dx:GridViewLayoutGroup>
            
                                                     
                
                                                      </Items>
                                                 
                                                  </EditFormLayoutProperties>
                                            

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
                                                      <SettingsBehavior ConfirmDelete="true"  allowfocusedrow="True"  />
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Partner Docs"  />


                                        </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="test5" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [PartnerDocs] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PartnerDocs] ([IdentityDocType_Id], [DocRef], [DocCountryOfIssue], [DocAuthorotyOfIssue], [DocDateOfIssue], [DocExpiryOfIssue], [DocScan]) VALUES (@IdentityDocType_Id, @DocRef, @DocCountryOfIssue, @DocAuthorotyOfIssue, @DocDateOfIssue, @DocExpiryOfIssue, @DocScan)" SelectCommand="SELECT * FROM [PartnerDocs]" UpdateCommand="UPDATE [PartnerDocs] SET [IdentityDocType_Id] = @IdentityDocType_Id, [DocRef] = @DocRef, [DocCountryOfIssue] = @DocCountryOfIssue, [DocAuthorotyOfIssue] = @DocAuthorotyOfIssue, [DocDateOfIssue] = @DocDateOfIssue, [DocExpiryOfIssue] = @DocExpiryOfIssue, [DocScan] = @DocScan WHERE [Id] = @Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="IdentityDocType_Id" Type="Int32" />
                                                    <asp:Parameter Name="DocRef" Type="String" />
                                                    <asp:Parameter Name="DocCountryOfIssue" Type="String" />
                                                    <asp:Parameter Name="DocAuthorotyOfIssue" Type="String" />
                                                    <asp:Parameter Name="DocDateOfIssue" DbType="Date" />
                                                    <asp:Parameter Name="DocExpiryOfIssue" DbType="Date" />
                                                    <asp:Parameter Name="DocScan" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="IdentityDocType_Id"  Type="Int32" />
                                                    <asp:Parameter Name="DocRef" Type="String" />
                                                    <asp:Parameter Name="DocCountryOfIssue" Type="String" />
                                                    <asp:Parameter Name="DocAuthorotyOfIssue" Type="String" />
                                                    <asp:Parameter Name="DocDateOfIssue" DbType="Date" />
                                                    <asp:Parameter Name="DocExpiryOfIssue" DbType="Date" />
                                                    <asp:Parameter Name="DocScan" Type="String" />
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            </div>
                                          
                                           
                                               <div role="tabpanel" class="tab-pane " id="IdentityDocType"  >
                                                   <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="test4" EnableTheming="True" KeyFieldName="Code" Theme="Material" style="width:100%" >
                                                       <SettingsSearchPanel Visible="True" />
                                                        <Settings  ShowTitlePanel="True"  />
                                                     
                                                        <SettingsCommandButton>
                                                        <UpdateButton Text="Save">
                    
                                                            <Styles Style-ForeColor="#0b7dda">
                                                                <Style ForeColor="#0B7DDA"></Style>
                                                             </Styles>
                    
                                                        </UpdateButton>
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Identity DocType"  />
                                                       <Columns>
                                                           <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                            </dx:GridViewCommandColumn>
                                                            <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" VisibleIndex="1">
                                                                 <EditFormSettings Visible="false" />   
                                                           </dx:GridViewDataTextColumn>
                                                           <dx:GridViewDataTextColumn FieldName="Code" VisibleIndex="2" >
                                                           </dx:GridViewDataTextColumn>
                                                           <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                                                           </dx:GridViewDataTextColumn>
                                                           <dx:GridViewDataTextColumn FieldName="Type" VisibleIndex="4">
                                                           </dx:GridViewDataTextColumn>
                                                       </Columns>
                                                             <SettingsEditing EditFormColumnCount="1"  Mode="PopupEditForm" />

                                            <SettingsEditing Mode="PopupEditForm"  />

                                          <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                            <EditForm />
                                             </SettingsPopup>

                                                   </dx:ASPxGridView>


                                                   <asp:SqlDataSource ID="test4" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [IdentityDocType] WHERE [Id] = @Id" InsertCommand="INSERT INTO [IdentityDocType] ([Code], [Description], [Type]) VALUES (@Code, @Description, @Type)" SelectCommand="SELECT * FROM [IdentityDocType]" UpdateCommand="UPDATE [IdentityDocType] SET [Code] = @Code,[Description] = @Description, [Type] = @Type WHERE [Id] = @Id">
                                                       <DeleteParameters>
                                                           <asp:Parameter Name="Code" Type="String" />
                                                       </DeleteParameters>
                                                       <InsertParameters>
                                  
                                                           <asp:Parameter Name="Code" Type="String" />
                                                           <asp:Parameter Name="Description" Type="String" />
                                                           <asp:Parameter Name="Type" Type="String" />
                                                       </InsertParameters>
                                                       <UpdateParameters>
                                                           <asp:Parameter Name="Description" Type="String" />
                                                           <asp:Parameter Name="Type" Type="String" />
                                                           <asp:Parameter Name="Code" Type="String" />
                                                           <asp:Parameter Name="Id" Type="Int32" />
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
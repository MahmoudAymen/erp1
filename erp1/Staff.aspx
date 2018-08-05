<%@ Page Language="C#" MasterPageFile="~/erp.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="erp1.Staff" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
  
       <div class="container" style="width:98%" >
	         <div class="row">
		       <div class="col-md-12" >
                  <!-- Nav tabs --><div class="card"  >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"><a href="#Staff" aria-controls="Staff" role="tab" data-toggle="tab">Staff </a></li>      
                   <li role="presentation" ><a href="#LegalPersonType" aria-controls="LegalPersonType" role="tab" data-toggle="tab"> Legal Person Type </a></li>
                   <li role="presentation"><a href="#StaffPosition" aria-controls="StaffPosition" role="tab" data-toggle="tab">Staff Position</a></li>
                                 
                                       
                    </ul>
                          <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane  " id="LegalPersonType" >

                                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Leg" EnableTheming="True" KeyFieldName="Code" Theme="Material" Width="100%">
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Legal Person Type"  />

                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Code" ReadOnly="false" VisibleIndex="1">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>

                                                   <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                                   <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                
                                          <dx:GridViewColumnLayoutItem ColumnName="Code" />

                                      
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                              
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>



                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="Leg" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [LegalPersonType] WHERE [Code] = @Code" InsertCommand="INSERT INTO [LegalPersonType] ([Code], [Description]) VALUES (@Code, @Description)" SelectCommand="SELECT * FROM [LegalPersonType]" UpdateCommand="UPDATE [LegalPersonType] SET [Description] = @Description WHERE [Code] = @Code">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Code" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Code" Type="String" />
                                                    <asp:Parameter Name="Description" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Description" Type="String" />
                                                    <asp:Parameter Name="Code" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>

                                            </div>
                                         <div role="tabpanel" class="tab-pane  " id="StaffPosition" >
                                             <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="stafPos" KeyFieldName="Code" Theme="Material" Width="100%">
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Staff Position"  />

                                                 <Columns>
                                                     <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                     </dx:GridViewCommandColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Code" ReadOnly="false" VisibleIndex="1">
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="CodeLegalPersonType" VisibleIndex="3">
                                                     </dx:GridViewDataTextColumn>
                                                 </Columns>

                                                 
                                                 <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                                   <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                
                                          <dx:GridViewColumnLayoutItem ColumnName="Code" />

                                      
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                              <dx:GridViewColumnLayoutItem Caption="CodeLegalPersonType" >
                                                  <Template>
                                                      <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String" DataSourceID="testLeg" TextField="Code" Value='<%# Bind("CodeLegalPersonType") %>' Theme="Material" Width="100%">

                                                      </dx:ASPxComboBox>
                                       
                                                  </Template>
                                                  </dx:GridViewColumnLayoutItem>
                                              
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>


                                             </dx:ASPxGridView>
                                              <asp:SqlDataSource ID="testLeg" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [LegalPersonType]"></asp:SqlDataSource>

                                             <asp:SqlDataSource ID="stafPos" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [StaffPosition] WHERE [Code] = @Code" InsertCommand="INSERT INTO [StaffPosition] ([Code], [Description], [CodeLegalPersonType]) VALUES (@Code, @Description, @CodeLegalPersonType)" SelectCommand="SELECT * FROM [StaffPosition]" UpdateCommand="UPDATE [StaffPosition] SET [Description] = @Description, [CodeLegalPersonType] = @CodeLegalPersonType WHERE [Code] = @Code">
                                                 <DeleteParameters>
                                                     <asp:Parameter Name="Code" Type="String" />
                                                 </DeleteParameters>
                                                 <InsertParameters>
                                                     <asp:Parameter Name="Code" Type="String" />
                                                     <asp:Parameter Name="Description" Type="String" />
                                                     <asp:Parameter Name="CodeLegalPersonType" Type="String" />
                                                 </InsertParameters>
                                                 <UpdateParameters>
                                                     <asp:Parameter Name="Description" Type="String" />
                                                     <asp:Parameter Name="CodeLegalPersonType" Type="String" />
                                                     <asp:Parameter Name="Code" Type="String" />
                                                 </UpdateParameters>
                                             </asp:SqlDataSource>
                                             </div>
                                          <div role="tabpanel" class="tab-pane active  " id="Staff" >
                                              <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="staf1" KeyFieldName="Id" Theme="Material" Width="100%">
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Staff "  />
                                                  <Columns>
                                                      <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                      </dx:GridViewCommandColumn>
                                                      <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" VisibleIndex="1">
                                                          <EditFormSettings Visible="False" />
                                                      </dx:GridViewDataTextColumn>
                                                      <dx:GridViewDataTextColumn FieldName="PositionId" VisibleIndex="2">
                                                      </dx:GridViewDataTextColumn>
                                                      <dx:GridViewDataTextColumn FieldName="PositionValue" VisibleIndex="3">
                                                      </dx:GridViewDataTextColumn>
                                                      <dx:GridViewDataCheckColumn FieldName="InService" VisibleIndex="4">
                                                      </dx:GridViewDataCheckColumn>
                                                      <dx:GridViewDataDateColumn FieldName="PositionStartDate" VisibleIndex="5">
                                                      </dx:GridViewDataDateColumn>
                                                      <dx:GridViewDataDateColumn FieldName="PositionEndDate" VisibleIndex="6">
                                                      </dx:GridViewDataDateColumn>
                                                  </Columns>


                                                       <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                                   <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                                              <dx:GridViewColumnLayoutItem Caption="PositionId" >
                                                  <Template>
                                                      <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.String" DataSourceID="SqlDataSource1" TextField="Code" Value='<%# Bind("PositionId") %>' Theme="Material" Width="100%">

                                                      </dx:ASPxComboBox>
                                       
                                                  </Template>
                                                  </dx:GridViewColumnLayoutItem>
                                              
                
                                          <dx:GridViewColumnLayoutItem ColumnName="PositionValue" />

                                      
                                                   <dx:GridViewColumnLayoutItem ColumnName="InService"  />

                                                     <dx:GridViewColumnLayoutItem ColumnName="PositionStartDate"  />
                                                        <dx:GridViewColumnLayoutItem ColumnName="PositionEndDate"  />
                                             
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>

                                              </dx:ASPxGridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [StaffPosition]"></asp:SqlDataSource>
                                              <asp:SqlDataSource ID="staf1" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Staff] ([PositionId], [PositionValue], [InService], [PositionStartDate], [PositionEndDate]) VALUES (@PositionId, @PositionValue, @InService, @PositionStartDate, @PositionEndDate)" SelectCommand="SELECT [Id], [PositionId], [PositionValue], [InService], [PositionStartDate], [PositionEndDate] FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [PositionId] = @PositionId, [PositionValue] = @PositionValue, [InService] = @InService, [PositionStartDate] = @PositionStartDate, [PositionEndDate] = @PositionEndDate WHERE [Id] = @Id">
                                                  <DeleteParameters>
                                                      <asp:Parameter Name="Id" Type="Int64" />
                                                  </DeleteParameters>
                                                  <InsertParameters>
                                                      <asp:Parameter Name="PositionId" Type="String" />
                                                      <asp:Parameter Name="PositionValue" Type="String" />
                                                      <asp:Parameter Name="InService" Type="Boolean" />
                                                      <asp:Parameter DbType="Date" Name="PositionStartDate" />
                                                      <asp:Parameter DbType="Date" Name="PositionEndDate" />
                                                  </InsertParameters>
                                                  <UpdateParameters>
                                                      <asp:Parameter Name="PositionId" Type="String" />
                                                      <asp:Parameter Name="PositionValue" Type="String" />
                                                      <asp:Parameter Name="InService" Type="Boolean" />
                                                      <asp:Parameter DbType="Date" Name="PositionStartDate" />
                                                      <asp:Parameter DbType="Date" Name="PositionEndDate" />
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

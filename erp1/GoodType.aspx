<%@ Page Language="C#"  MasterPageFile="~/erp.Master" AutoEventWireup="true" CodeBehind="GoodType.aspx.cs" Inherits="erp1.GoodType" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
 <asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="container" style="width:98%" >
	         <div class="row">
		       <div class="col-md-12" >
                  <!-- Nav tabs --><div class="card"  >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"><a href="#GoodFamily" aria-controls="GoodFamily" role="tab" data-toggle="tab"> Good Family </a></li>
                   <li role="presentation"><a href="#GoodType" aria-controls="GoodType" role="tab" data-toggle="tab">Good Type</a></li>
                     <li role="presentation"><a href="#GoodUnit" aria-controls="GoodUnit" role="tab" data-toggle="tab">Good Unit </a></li>   
                      <li role="presentation"><a href="#PackagingType" aria-controls="PackagingType" role="tab" data-toggle="tab"> Packaging Type </a></li>   
                      <li role="presentation"><a href="#StockTrackingMethod" aria-controls="StockTrackingMethod" role="tab" data-toggle="tab"> Stock Tracking Method </a></li>                   
                                       
                    </ul>
                          <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active " id="GoodFamily" >
                                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="goodFa" KeyFieldName="Code" Theme="Material" Width="100%">
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Good Family"  />
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Code" ReadOnly="false" VisibleIndex="1">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                                 <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>

                                          <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                                              <dx:GridViewColumnLayoutItem ColumnName="Code"  />
                                              
                                         
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                                     
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>

                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="goodFa" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [GoodFamily] WHERE [Code] = @Code" InsertCommand="INSERT INTO [GoodFamily] ([Code], [Description]) VALUES (@Code, @Description)" SelectCommand="SELECT * FROM [GoodFamily]" UpdateCommand="UPDATE [GoodFamily] SET [Description] = @Description WHERE [Code] = @Code">
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
                                         <div role="tabpanel" class="tab-pane  " id="GoodType" >
                                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" KeyFieldName="Code" Theme="Material" Width="100%" DataSourceID="goodTy">
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Good Type"  />
                                             
                                                 <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>

                                          <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                                              <dx:GridViewColumnLayoutItem ColumnName="Code"  />
                                              
                                         
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                                     
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>

                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Code" ReadOnly="false" VisibleIndex="1">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>

                                            </dx:ASPxGridView>
                                             <asp:SqlDataSource ID="goodTy" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [GoodType] WHERE [Code] = @Code" InsertCommand="INSERT INTO [GoodType] ([Code], [Description]) VALUES (@Code, @Description)" SelectCommand="SELECT * FROM [GoodType]" UpdateCommand="UPDATE [GoodType] SET [Description] = @Description WHERE [Code] = @Code">
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

                                          <div role="tabpanel" class="tab-pane  " id="GoodUnit"  >
                                            <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" KeyFieldName="Code" Theme="Material" Width="100%" DataSourceID="goodunt">
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Good Unit"  />
                                             
                                                 <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>

                                          <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                                              <dx:GridViewColumnLayoutItem ColumnName="Code"  />
                                              
                                         
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                                     
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>

                                            

                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Code" ReadOnly="false" VisibleIndex="1">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>

                                            

                                            </dx:ASPxGridView>

                                              <asp:SqlDataSource ID="goodunt" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [GoodUnit] WHERE [Code] = @Code" InsertCommand="INSERT INTO [GoodUnit] ([Code], [Description]) VALUES (@Code, @Description)" SelectCommand="SELECT * FROM [GoodUnit]" UpdateCommand="UPDATE [GoodUnit] SET [Description] = @Description WHERE [Code] = @Code">
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
                                       <div role="tabpanel" class="tab-pane  " id="PackagingType" >
                                            <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" KeyFieldName="Code" Theme="Material" Width="100%" DataSourceID="PackType" >
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Packaging Type"  />
                                             
                                                 <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>

                                          <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                                              <dx:GridViewColumnLayoutItem ColumnName="Code"  />
                                              
                                         
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                                     
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>

                                            

                                             
                                            

                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Code" ReadOnly="false" VisibleIndex="1">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>

                                            

                                             
                                            

                                            </dx:ASPxGridView>


                                            <asp:SqlDataSource ID="PackType" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [PackagingType] WHERE [Code] = @Code" InsertCommand="INSERT INTO [PackagingType] ([Code], [Description]) VALUES (@Code, @Description)" SelectCommand="SELECT * FROM [PackagingType]" UpdateCommand="UPDATE [PackagingType] SET [Description] = @Description WHERE [Code] = @Code">
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


                                           <div role="tabpanel" class="tab-pane  " id="StockTrackingMethod" >
                                            <dx:ASPxGridView ID="ASPxGridView5" runat="server" AutoGenerateColumns="False" KeyFieldName="Code" Theme="Material" Width="100%" DataSourceID="Stok" >
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Stock Tracking Method"  />
                                             
                                                 <SettingsPager Mode="ShowAllRecords" />
                                         
                                                <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>

                                          <EditFormLayoutProperties>
                                           <Items>
                                          <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                         <Items>
                                              <dx:GridViewColumnLayoutItem ColumnName="Code"  />
                                              
                                         
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                                     
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                   <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>

                                            

                                             
                                            

                                            

                                             
                                            

                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Code" ReadOnly="false" VisibleIndex="1">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>

                                            

                                             
                                            

                                            

                                             
                                            

                                            </dx:ASPxGridView>


                                               <asp:SqlDataSource ID="Stok" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [StockTrackingMethod] WHERE [Code] = @Code" InsertCommand="INSERT INTO [StockTrackingMethod] ([Code], [Description]) VALUES (@Code, @Description)" SelectCommand="SELECT * FROM [StockTrackingMethod]" UpdateCommand="UPDATE [StockTrackingMethod] SET [Description] = @Description WHERE [Code] = @Code">
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




              </div>
               </div>
              </div>
                 </div>
            </div>


    </form>


    </asp:Content>

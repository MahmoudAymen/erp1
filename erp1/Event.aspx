<%@ Page Language="C#" MasterPageFile="~/erp.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="erp1.Event" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>







       <asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


           <form id="form1" runat="server">

        <div class="container" style="width:98%" >
	         <div class="row">
		       <div class="col-md-12" >
                  <!-- Nav tabs --><div class="card"  >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"><a href="#Event" aria-controls="Event" role="tab" data-toggle="tab"> Event </a></li>
                   <li role="presentation"><a href="#EventNature" aria-controls="EventNature" role="tab" data-toggle="tab">Event Nature</a></li>
                     <li role="presentation"><a href="#EventFamilly" aria-controls="EventFamilly" role="tab" data-toggle="tab">Event Familly </a></li>                   
                                       
                    </ul>
                          <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active " id="Event" >
                                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="test8" KeyFieldName="Id" Theme="Material"  style="width:100%" OnRowInserting="ASPxGridView1_RowInserting" OnRowUpdating="ASPxGridView1_RowUpdating" >
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Event"  />
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" VisibleIndex="1">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="IdEventNature" VisibleIndex="2">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataDateColumn FieldName="DateEvent" VisibleIndex="4">
                                                    </dx:GridViewDataDateColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Doc" VisibleIndex="5">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Duree" VisibleIndex="6">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="EventFamilly_Id" VisibleIndex="7">
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
                
                                          <dx:GridViewColumnLayoutItem Caption="EventNature" >

                                         <Template>

                                                <dx:ASPxComboBox ID="EventNature" runat="server" DataSourceID="test9"  TextField="Label" Width="100%" Theme="Material"></dx:ASPxComboBox>
                                                    
                              
                                            
                                                 </Template> 

                                                 </dx:GridViewColumnLayoutItem >
                                                   <dx:GridViewColumnLayoutItem ColumnName="Description"  />
                     
                                                      <dx:GridViewColumnLayoutItem ColumnName="DateEvent"  />

                                                             <dx:GridViewColumnLayoutItem ColumnName="Doc" />
                                             <dx:GridViewColumnLayoutItem ColumnName="Duree" />

                                              <dx:GridViewColumnLayoutItem Caption="EventFamilly" >
                                                  <Template>
                                                      <dx:ASPxComboBox ID="lab" runat="server" DataSourceID="test1"  TextField="Label" Width="100%" Theme="Material"></dx:ASPxComboBox>
                                                    
                                                     
                                                  </Template>
                                                  </dx:GridViewColumnLayoutItem>
                                                  
                                              
                                                                     </Items>
                                                                 </dx:GridViewLayoutGroup>
            
                                                                  <dx:EditModeCommandLayoutItem  HorizontalAlign="Right" />
                                                                        </Items>
               
                                                      </EditFormLayoutProperties>

                                            </dx:ASPxGridView>
                                             <asp:SqlDataSource ID="test1" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Label] FROM [EventFamilly]"></asp:SqlDataSource>

                                             <asp:SqlDataSource ID="test9" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Label] FROM [EventNature]"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="test8" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [Event] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Event] ([IdEventNature], [Description], [DateEvent], [Doc], [Duree], [EventFamilly_Id]) VALUES (@IdEventNature, @Description, @DateEvent, @Doc, @Duree, @EventFamilly_Id)  " SelectCommand="SELECT [Id], [IdEventNature], [Description], [DateEvent], [Doc], [Duree], [EventFamilly_Id] FROM [Event]" UpdateCommand="UPDATE [Event] SET [IdEventNature] = @IdEventNature, [Description] = @Description, [DateEvent] = @DateEvent, [Doc] = @Doc, [Duree] = @Duree, [EventFamilly_Id] = @EventFamilly_Id WHERE [Id] = @Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Id" Type="Int64" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="IdEventNature" Type="Int32" />
                                                    <asp:Parameter Name="Description" Type="String" />
                                                    <asp:Parameter DbType="Date" Name="DateEvent" />
                                                    <asp:Parameter Name="Doc" Type="String" />
                                                    <asp:Parameter Name="Duree" Type="Int32" />
                                                    <asp:Parameter Name="EventFamilly_Id" Type="Int32" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="IdEventNature" Type="Int32" />
                                                    <asp:Parameter Name="Description" Type="String" />
                                                    <asp:Parameter DbType="Date" Name="DateEvent" />
                                                    <asp:Parameter Name="Doc" Type="String" />
                                                    <asp:Parameter Name="Duree" Type="Int32" />
                                                    <asp:Parameter Name="EventFamilly_Id" Type="Int32" />
                                                    <asp:Parameter Name="Id" Type="Int64" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>

                                            </div>
                                         <div role="tabpanel" class="tab-pane " id="EventNature" >
                                               <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="test7" KeyFieldName="Id" Theme="Material" style="width:100%" >
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Event Nature"  />
                                                   <Columns>
                                                       <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                       </dx:GridViewCommandColumn>
                                                       <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" VisibleIndex="1">
                                                        <EditFormSettings Visible="false" />   
                                                       </dx:GridViewDataTextColumn>
                                                       <dx:GridViewDataTextColumn FieldName="Label" VisibleIndex="2">
                                                       </dx:GridViewDataTextColumn>
                                                   </Columns>
                                                   <SettingsEditing EditFormColumnCount="1"  Mode="PopupEditForm" />

                                            <SettingsEditing Mode="PopupEditForm"  />

                                          <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                            <EditForm />
                                             </SettingsPopup>
                                                </dx:ASPxGridView>


                                               <asp:SqlDataSource ID="test7" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [EventNature] WHERE [Id] = @Id" InsertCommand="INSERT INTO [EventNature] ([Label]) VALUES (@Label)" SelectCommand="SELECT * FROM [EventNature]" UpdateCommand="UPDATE [EventNature] SET [Label] = @Label WHERE [Id] = @Id">
                                                   <DeleteParameters>
                                                       <asp:Parameter Name="Id" Type="Int32" />
                                                   </DeleteParameters>
                                                   <InsertParameters>
                                                       <asp:Parameter Name="Label" Type="String" />
                                                   </InsertParameters>
                                                   <UpdateParameters>
                                                       <asp:Parameter Name="Label" Type="String" />
                                                       <asp:Parameter Name="Id" Type="Int32" />
                                                   </UpdateParameters>
                                               </asp:SqlDataSource>


                                             </div>
                                         <div role="tabpanel" class="tab-pane " id="EventFamilly" >
                                             <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="test12" KeyFieldName="Id" Theme="Material" Width="100%">
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
                                                       <SettingsText ConfirmDelete="Voulez vous Supprimer  ?" Title="Event Familly"  />
                                                 <Columns>
                                                     <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                     </dx:GridViewCommandColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="true" VisibleIndex="1">
                                                           <EditFormSettings Visible="false" />   
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="Label" VisibleIndex="2">
                                                     </dx:GridViewDataTextColumn>
                                                     <dx:GridViewDataTextColumn FieldName="description" VisibleIndex="3">
                                                     </dx:GridViewDataTextColumn>
                                                 </Columns>
                                                 <SettingsEditing EditFormColumnCount="1"  Mode="PopupEditForm" />

                                            <SettingsEditing Mode="PopupEditForm"  />

                                          <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                            <EditForm />
                                             </SettingsPopup>
                                             </dx:ASPxGridView>
                                             <asp:SqlDataSource ID="test12" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [EventFamilly] WHERE [Id] = @Id" InsertCommand="INSERT INTO [EventFamilly] ([Label], [description]) VALUES (@Label, @description)" SelectCommand="SELECT * FROM [EventFamilly]" UpdateCommand="UPDATE [EventFamilly] SET [Label] = @Label, [description] = @description WHERE [Id] = @Id">
                                                 <DeleteParameters>
                                                     <asp:Parameter Name="Id" Type="Int32" />
                                                 </DeleteParameters>
                                                 <InsertParameters>
                                                    
                                                     <asp:Parameter Name="Label" Type="String" />
                                                     <asp:Parameter Name="description" Type="String" />
                                                 </InsertParameters>
                                                 <UpdateParameters>
                                                     <asp:Parameter Name="Label" Type="String" />
                                                     <asp:Parameter Name="description" Type="String" />
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


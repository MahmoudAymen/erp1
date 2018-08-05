<%@ Page Language="C#" MasterPageFile="~/erp.Master" AutoEventWireup="true" CodeBehind="Good.aspx.cs" Inherits="erp1.Good" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">


           <script type="text/javascript">
               function OnFocusedCardChanged(s, e) {
                   cardView.GetCardValues(cardView.GetFocusedCardIndex(), 'TypeCode;BarCode;TaxCode;UnitCode;Label;ObtaningDate;PurchasingPrice;SellingPrice;FamilyCode;DelivryDate;WarantyPeriod;StockTrakingMethodCode;PackagingTypeCode;StorageCondition;SpecialPrecaution;note', OnGetCardValues);
                   grid_Event.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                   grid_Document.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                   grid_Adresse.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                   grid_Staff.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                   
                 

               }
               function OnGetCardValues(values) {
                   var editors = [TypeCode, BarCode, TaxCode, UnitCode, Label, ObtaningDate, PurchasingPrice, SellingPrice, FamilyCode, DelivryDate, WarantyPeriod, StockTrakingMethodCode, PackagingTypeCode, StorageCondition, SpecialPrecaution, note];
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
           
             .dxgvTable_Material {
                 width:88%;
             }

             .dxgvControl_Material, .dxgvDisabled_Material
             {
                  width:89%;
             }
                  .dxtcSys.dxtc-flex > .dxtc-stripContainer, .dxtcSys.dxtc-flex > .dxtc-stripContainer .dxtc-strip
          {
             
               
               justify-content:flex-start;
                   width: 302px;
                   font-size: 59%;
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
         
         #table1{
             border-collapse:separate;
             border-spacing:15px 20px;
             width:100%;
            
         }  
              #table2{
             border-collapse:separate;
             border-spacing:15px 20px;
             width:100%;
            
         }  
                 #table3{
             border-collapse:separate;
             border-spacing:15px 20px;
             width:100%;
            
         }  
                    #table4{
             border-collapse:separate;
             border-spacing:15px 20px;
             width:100%;
            
         }  
            #D1
            {
             border-collapse:separate;
             border-spacing:8px;
             width:30%;
            
             
          
            }
              #D2
            {
             border-collapse:separate;
             border-spacing:8px;
             width:100%;
            
             
             
          
            }
                #D3
            {
             border-collapse:separate;
             border-spacing:8px;
             width:100%;
             
             
          
            }
                  #D4
            {
             border-collapse:separate;
             border-spacing:8px;
             width:30%;
             
            }


       
        
             a.balise_a:hover{
              background-color:gray;
          }

               .dxcvSearchPanel_Material {
                  padding: 0px 0 0px;
          }
       
               .dxtcSys.dxtc-flex > .dxtc-stripContainer, .dxtcSys.dxtc-flex > .dxtc-stripContainer .dxtc-strip
               {
                     justify-content:center;
                        
                      
               }
             
    </style>


            <div class="container" style="width:100%" >
	         <div class="row" >
		       <div class="col-md-12">
                  <div class="card"  >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"> <a href="#Good" aria-controls="Good" role="tab" data-toggle="tab">  </a></li>
                                    
                    </ul>
                       <div class="tab-content"  >
                                 <div role="tabpanel" class="tab-pane active " id="Good"  >
                                     <dx:ASPxCardView ID="ASPxCardView1" runat="server" ClientInstanceName="cardView" EnableCardsCache="False" AutoGenerateColumns="False" DataSourceID="goo" KeyFieldName="Id" Theme="Material" Width="100%" OnCardInserting="ASPxCardView1_CardInserting" OnCardUpdating="ASPxCardView1_CardUpdating">
                                         
                                           
                                         <SettingsSearchPanel Visible="True" />
                                       <ClientSideEvents FocusedCardChanged="OnFocusedCardChanged"  />
                                         
                                              <SettingsBehavior AllowFocusedCard="true" ConfirmDelete="true"  />
                                         
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
                                             <dx:CardViewImageColumn FieldName="Photo" >
                                                  <PropertiesImage ImageHeight="150px"  ImageUrlFormatString="~/Image/{0}" ImageWidth="160px">
                                                  </PropertiesImage>
                                              </dx:CardViewImageColumn>
                                             <dx:CardViewTextColumn FieldName="TypeCode" Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="Reference" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="BarCode"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="TaxCode"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="UnitCode"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="Label"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="Description">
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewDateColumn FieldName="ObtaningDate"  Visible="false" >
                                             </dx:CardViewDateColumn>
                                             <dx:CardViewTextColumn FieldName="PurchasingPrice"  Visible="false"  >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="SellingPrice"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="FamilyCode"  Visible="false"  >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewDateColumn FieldName="DelivryDate"  Visible="false" >
                                             </dx:CardViewDateColumn>
                                             <dx:CardViewTextColumn FieldName="WarantyPeriod"  Visible="false"  >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="StockTrakingMethodCode"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="PackagingTypeCode"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="StorageCondition"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                             <dx:CardViewTextColumn FieldName="SpecialPrecaution" Visible="false"  >
                                             </dx:CardViewTextColumn>
                                            
                                             <dx:CardViewTextColumn FieldName="note"  Visible="false" >
                                             </dx:CardViewTextColumn>
                                         </Columns>
                                         <CardLayoutProperties>
                                             <Items>
                                                 <dx:CardViewCommandLayoutItem HorizontalAlign="Right" ShowDeleteButton="True" ShowEditButton="True" ShowNewButton="True">
                                                 </dx:CardViewCommandLayoutItem>
                                                  <dx:CardViewColumnLayoutItem ColumnName="Photo" ShowCaption="False" HorizontalAlign="Center">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="TypeCode" Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="Reference" ShowCaption="False" HorizontalAlign="Center" >
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="BarCode"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="TaxCode"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="UnitCode"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="Label"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="Description" ShowCaption="False" HorizontalAlign="Center" >
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="ObtaningDate"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="PurchasingPrice"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="SellingPrice"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="FamilyCode"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="DelivryDate"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="WarantyPeriod"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="StockTrakingMethodCode"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="PackagingTypeCode"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="StorageCondition"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="SpecialPrecaution"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:CardViewColumnLayoutItem ColumnName="note"  Visible="false">
                                                 </dx:CardViewColumnLayoutItem>
                                                 <dx:EditModeCommandLayoutItem HorizontalAlign="Right">
                                                 </dx:EditModeCommandLayoutItem>
                                             </Items>
                                         </CardLayoutProperties>
                                                                            
                                         <SettingsEditing Mode="PopupEditForm" />
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True"  >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                          <Templates >
                                              <EditForm>
                                                  <dx:ASPxPageControl ID="pageControl" runat="server" ActiveTabIndex="3" Theme="Material"  CssClass="widht">
                                                      <TabPages>
                                                          <dx:TabPage Text="Step1">
                                                              <ContentCollection>
                                                                  <dx:ContentControl runat="server"  >


                                                                      <table id="table1" >

                                                                          <tr>
                                                                            
                                                                              <td >
                                                                                  <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="TypeCode:" Theme="Material" ></dx:ASPxLabel>
                                                                              </td>
                                                                            
                                                                              <td>
                                                                                    <dx:ASPxComboBox ID="TypeCode" runat="server" DataSourceID="SqlDataSource22" TextField="Code" Value='<%# Bind("TypeCode") %>' Theme="Material" Width="100%">

                                                                                </dx:ASPxComboBox>
                               
                                                                                  <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [GoodType]"></asp:SqlDataSource>
                                                                                 
                                                                                 
                                                                              </td>
                                                                             
                                                                             
                                                                            
                                                                          </tr>
                                                                       
                                                                       
                                                                        
                                                                            <tr>
                                                                                 
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Reference:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                 
                                                                                  <dx:ASPxTextBox ID="Reference" ClientInstanceName="Reference" Text='<%# Eval("Reference") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                          
                                                                            <tr>
                                                                              
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="BarCode:" Theme="Material" ></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                  <dx:ASPxTextBox ID="BarCode" ClientInstanceName="BarCode" Text='<%# Eval("BarCode") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                    
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>

                                                                           <tr>
                                                                              
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="UnitCode:"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxComboBox ID="UnitCode" runat="server" DataSourceID="SqlData" TextField="Code" Value='<%# Bind("UnitCode") %>' Theme="Material" Width="100%">

                                                                                </dx:ASPxComboBox>
                               
                                                                                  <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [GoodUnit]"></asp:SqlDataSource>
                                                                                 
                                                                                 
                              
                                                                         
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                           
                                                                           <tr>
                                                                              
                                                                               
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="TaxCode:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                    <dx:ASPxTextBox ID="TaxCode" ClientInstanceName="TaxCode" Text='<%# Eval("TaxCode") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                    
                                                                                  
                                                                                

                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                          
                                                                          
                                                                      </table>

                                                                  </dx:ContentControl>
                                                              </ContentCollection>
                                                          </dx:TabPage>
                                                          <dx:TabPage Text="Step2" >
                                                             
                                                              <ContentCollection >
                                                                  <dx:ContentControl runat="server"  >


                                                                      <table id="table2">



                                                                          
                                                                           <tr>
                                                                             
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Label:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                              <dx:ASPxTextBox  ID="Label" ClientInstanceName="Label"  Text='<%# Eval("Label") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                
                                                                               
                                                                              </td>
                                                                              
                                                                          </tr>

                                                                            <tr>
                                                                              
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="Description:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                                
                                                                              <td>
                                                                                    <dx:ASPxTextBox  ID="Description" ClientInstanceName="Description"  Text='<%# Eval("Description") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                
                                                                               
                                                                             
                                                                              </td>
                                                                              
                                                                          </tr>





                                                                         <tr>
                                                                            
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="ObtaningDate:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                 
                                                                                    <dx:ASPxDateEdit  ID="ObtaningDate" ClientInstanceName="ObtaningDate" Text='<%# Eval("ObtaningDate") %>'  runat="server"  DisplayFormatString="yyyy-MM-dd" EditFormatString="yyyy-MM-dd" Theme="Material" Width="100%" >

                                                                                  </dx:ASPxDateEdit>
                                                                                 
                                                                               
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                          
                                                                           <tr>
                                                                           
                                                                               
                                                                          
                                                                               
                                                                     
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="PurchasingPrice:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                    <dx:ASPxTextBox  ID="PurchasingPrice" ClientInstanceName="PurchasingPrice"  Text='<%# Eval("PurchasingPrice") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="SellingPrice:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                    <dx:ASPxTextBox   ID="SellingPrice" ClientInstanceName="SellingPrice" Text='<%# Eval("SellingPrice") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>

                                                                          
                                                                      </table>



                                                                  </dx:ContentControl>
                                                              </ContentCollection>
                                                          </dx:TabPage>

                                                          <dx:TabPage Text="Step3"  >
                                                              

                                                              <ContentCollection>
                                                                  <dx:ContentControl runat="server" >
                                                                      <table id="table3">

                                                                   
                                                                            <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel12" runat="server" Text="FamilyCode:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                                
                                                                              <td>
                                                                                     <dx:ASPxComboBox ID="FamilyCode" runat="server" DataSourceID="SqlDataSource2" TextField="Code" Value='<%# Bind("FamilyCode") %>' Theme="Material" Width="100%">

                                                                                </dx:ASPxComboBox>
                               
                                                                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [GoodFamily]"></asp:SqlDataSource>
                                                       
                                                                                  
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel13" runat="server" Text="DelivryDate:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                  
                                                                                   <dx:ASPxDateEdit  ID="DelivryDate" ClientInstanceName="DelivryDate" Text='<%# Eval("DelivryDate") %>' runat="server"  DisplayFormatString="yyyy-MM-dd" EditFormatString="yyyy-MM-dd"    Theme="Material" Width="100%" >

                                                                                  </dx:ASPxDateEdit>
                                                                                 
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                               <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel14" runat="server" Text="WarantyPeriod:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox  ID="WarantyPeriod" ClientInstanceName="WarantyPeriod"  Text='<%# Eval("WarantyPeriod") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 

                                                                              </td>
                                                                              
                                                                        </tr>
                                                                                 
                                                                         
                                                                               <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel18" runat="server" Text="StorageCondition:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox  ID="StorageCondition" ClientInstanceName="StorageCondition"  Text='<%# Eval("StorageCondition") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 

                                                                              </td>
                                                                              
                                                                       
                                                                           </tr>
                                                                               <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel19" runat="server" Text="SpecialPrecaution:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox  ID="SpecialPrecaution" ClientInstanceName="SpecialPrecaution"  Text='<%# Eval("SpecialPrecaution") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 

                                                                              </td>
                                                                              
                                                                        </tr>

                                                                      </table>

                                                                  </dx:ContentControl>
                                                              </ContentCollection>
                                                          </dx:TabPage>

                                                         



                                                          <dx:TabPage Text="Step4">
                                                             

                                                              <ContentCollection>
                                                                  <dx:ContentControl runat="server" >
                                                                      
                                                                      <table id="table4">
                                                                          <tr>
                                                                                <td></td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="ASPxLabel15" runat="server" Text="StockTrakingMethodCode:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td> 
                                                                                   <dx:ASPxComboBox ID="StockTrakingMethodCode" runat="server" DataSourceID="SqlDataSource3" TextField="Code" Value='<%# Bind("StockTrakingMethodCode") %>' Theme="Material" Width="100%">

                                                                                </dx:ASPxComboBox>
                               
                                                                                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [StockTrackingMethod]"></asp:SqlDataSource>
                                                       
                                                                                      
                                                                              </td>
                                                                          </tr>
                                                                          <tr>
                                                                                <td></td>
                                                                              <td>
                                                                                    <dx:ASPxLabel ID="ASPxLabel16" runat="server" Text="PackagingTypeCode:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxComboBox ID="PackagingTypeCode" runat="server" DataSourceID="SqlDataSource4" TextField="Code" Value='<%# Bind("PackagingTypeCode") %>' Theme="Material" Width="100%">

                                                                                </dx:ASPxComboBox>
                               
                                                                                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [Code] FROM [PackagingType]"></asp:SqlDataSource>
                                                       
                                                                                 
                                                                              </td>
                                                                          </tr>
                                                                          <tr>
                                                                                <td></td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="ASPxLabel17" runat="server" Text="note:" Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox ID="note" ClientInstanceName="note" Text='<%# Eval("note") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                        
                                                                              </td>

                                                                          </tr>
                                                                          <tr>
                                                                                <td></td>
                                                                              <td>
                                                                                    <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Image:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" ClientInstanceName="uploader" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete" Theme="Material" UploadMode="Auto" Width="100%">
                                                                          <ValidationSettings AllowedFileExtensions=".jpg, .jpeg, .gif, .png, .svg, .bmp" MaxFileSize="4000000">
                                                                          </ValidationSettings>
                                                                          <ClientSideEvents FileUploadComplete="function(s, e) { 
                                                                              
                                                                               if (e.isValid) {
                                                                              
                                                                              cardView.UpdateEdit();
                                                                              
                                                                               
                                                                              
                                                                              }
                                                                              
                                                                              }" />
                                                                         

                                                                      </dx:ASPxUploadControl>


                                                                              </td>
                                                                          </tr>
                               
                                                                          <tr>
                                                                            
                                                                              <td>
                                                                             <b> <a class="balise_a" href="#" onclick="OnUpdateClik()" style="color:#0b7dda;">Save</a></b>
                                                                              </td>
                                                                              <td>
                                                                              <b> <a class="balise_a" runat="server" href="~/NaturalPerson.aspx" style="color:#f00">Cancel</a> </b>  
                                                                              </td>
                                                                          </tr>
                                                                        
                                                                      </table>
                                                                                                                                                                                   
                                                                                        

                                                                        
                                                                      
                                                                  </dx:ContentControl>
                                                              </ContentCollection>
                                                          </dx:TabPage>
                                                      </TabPages>
                                                  </dx:ASPxPageControl>
                                                  
                                              </EditForm>
                                          </Templates>

                                     
                                              
                                             


                                     </dx:ASPxCardView>
                                     <div class="panel-group" id="accordion" style="    padding-top: 5px;  width: 100%;background: #eee;">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"> <i class="fas fa-store"></i> Good Information</a>
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
                                                                                 <dx:ASPxLabel  runat="server"  Text="TypeCode:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="TypeCode" ClientInstanceName="TypeCode" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="BarCode:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="BarCode" ClientInstanceName="BarCode" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="TaxCode:"  Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="TaxCode" ClientInstanceName="TaxCode" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="UnitCode:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="UnitCode" ClientInstanceName="UnitCode" runat="server"  Theme="Material"></dx:ASPxLabel>
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
                                                                          <tr >
                                                                              <td>
                                                                                 <dx:ASPxLabel  runat="server"  Text="Label:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="Label" ClientInstanceName="Label" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td >
                                                                                    <dx:ASPxLabel  runat="server" Text="ObtaningDate:"  Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="ObtaningDate" ClientInstanceName="ObtaningDate" runat="server"  Theme="Material" ></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="PurchasingPrice:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="PurchasingPrice" ClientInstanceName="PurchasingPrice" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="SellingPrice:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="SellingPrice" ClientInstanceName="SellingPrice" runat="server"  Theme="Material"></dx:ASPxLabel>
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
                                                                                 <dx:ASPxLabel  runat="server"  Text="FamilyCode:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="FamilyCode" ClientInstanceName="FamilyCode" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="DelivryDate:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="DelivryDate" ClientInstanceName="DelivryDate" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="WarantyPeriod:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="WarantyPeriod" ClientInstanceName="WarantyPeriod" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="StockTrakingMethodCode:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="StockTrakingMethodCode" ClientInstanceName="StockTrakingMethodCode" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>

                                                                      </table>
                                                                      
                                                                      </dx:ContentControl>
                                                                  </ContentCollection>
                                                                    </dx:TabPage>
                                                           <dx:TabPage Text="Detail4">
                                                              <ContentCollection>
                                                                  <dx:ContentControl runat="server"  >
                                                                      <table id="D4">
                                                                          <tr>
                                                                              <td>
                                                                                 <dx:ASPxLabel  runat="server"  Text="PackagingTypeCode:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="PackagingTypeCode" ClientInstanceName="PackagingTypeCode" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="StorageCondition:"  Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="StorageCondition" ClientInstanceName="StorageCondition" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="SpecialPrecaution:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="SpecialPrecaution" ClientInstanceName="SpecialPrecaution" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="note:"  Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="note" ClientInstanceName="note" runat="server"  Theme="Material"></dx:ASPxLabel>
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
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"> <span class="glyphicon glyphicon-list-alt"></span> Good detail</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
            
                                              <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" EnableTheming="True" Theme="Material" Width="100%" >
                                                               <TabPages >
                                                                 <dx:TabPage Text="CV" Visible="true" >
                                                                          <ContentCollection >
                                                                         <dx:ContentControl runat="server">
                                                                             <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="test" Theme="Material" AutoGenerateColumns="False" KeyFieldName="Id"    ClientInstanceName="grid_Event" OnCustomCallback="ASPxGridView1_CustomCallback" OnLoad="ASPxGridView1_Load" Width="100%"  OnRowInserting="ASPxGridView1_RowInserting" OnRowUpdating="ASPxGridView1_RowUpdating" >

                                                                                   <settingspager pagesize="50" numericbuttoncount="1" />

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
                                                                                     <dx:GridViewDataTextColumn FieldName="Event_Id" ShowInCustomizationForm="True" Visible="false">
                                                                                     </dx:GridViewDataTextColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="Good_Id" ShowInCustomizationForm="True" Visible="false">
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
                                                            <dx:GridViewColumnLayoutItem  Caption="Good">
                                                                <Template>
                                                                        <dx:ASPxComboBox ID="Good" runat="server" DataSourceID="SqlDataSource2" TextField="TypeCode"  Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [TypeCode] FROM [Good]"></asp:SqlDataSource>
                                                                    
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

                                                                          
                                                                             </dx:ASPxGridView>
                                                                     

                                                                           

                                                                              </dx:ContentControl>
                                                                          </ContentCollection>
                                                                      </dx:TabPage>

                                  


                                                                      <dx:TabPage Text="Document d'identite" Visible="true">
                                                                          <ContentCollection>
                                                                              <dx:ContentControl runat="server">


                                                                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid_Document" DataSourceID="test16" KeyFieldName="Id" Theme="Material" OnCustomCallback="ASPxGridView2_CustomCallback" OnLoad="ASPxGridView2_Load"  Width="100%"  OnRowInserting="ASPxGridView2_RowInserting" OnRowUpdating="ASPxGridView2_RowUpdating">
                                                                                <settingspager pagesize="50" numericbuttoncount="5" />

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
                                                                                    <dx:GridViewDataTextColumn FieldName="Id_Good" ShowInCustomizationForm="True" Visible="false">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="PartnerDocs_Id" ShowInCustomizationForm="True" Visible="false">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                    <dx:GridViewDataTextColumn FieldName="ownerType" ShowInCustomizationForm="True" Visible="false">
                                                                                    </dx:GridViewDataTextColumn>
                                                                                      <dx:GridViewDataImageColumn FieldName="DocScan" VisibleIndex="0"  >
                                                                                       <PropertiesImage ImageHeight="150px" ImageWidth="140px" ImageUrlFormatString="~/Image/{0}">
                                
                                                                                          </PropertiesImage>
                                                                                           </dx:GridViewDataImageColumn>
                                                                                      <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="7" AdaptivePriority="2" >
                                                                                    </dx:GridViewCommandColumn>
                                                                                     <dx:GridViewDataTextColumn FieldName="IdentityDocType_Id" ShowInCustomizationForm="True" VisibleIndex="1" AdaptivePriority="1" >
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
                                                           
                                                            <dx:GridViewColumnLayoutItem Caption="Good">
                                                                 <Template>
                                                                       <dx:ASPxComboBox ID="Good" runat="server" DataSourceID="SqlDataSource4" TextField="TypeCode" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [TypeCode] FROM [Good]"></asp:SqlDataSource>
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


                                                                                  <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="test17" KeyFieldName="Id" Theme="Material"  ClientInstanceName="grid_Adresse" OnCustomCallback="ASPxGridView3_CustomCallback" OnLoad="ASPxGridView3_Load" Width="100%" OnRowInserting="ASPxGridView3_RowInserting" OnRowUpdating="ASPxGridView3_RowUpdating">

                                                                                   <settingspager pagesize="50" numericbuttoncount="3" />

                                                                                  <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>

                                                                               
                                                                              
                                                                                 <SettingsBehavior AllowFocusedRow="True"  ConfirmDelete="True" />
                                                                                        <Settings ShowGroupPanel="True" />
                                                                                      
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
                                                                                          <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="7" AdaptivePriority="2">
                                                                                          </dx:GridViewCommandColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Adresse_Id" ShowInCustomizationForm="True" VisibleIndex="6" Visible="false">
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Good_Id" ShowInCustomizationForm="True" VisibleIndex="5" Visible="false">
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
                                                                                           <dx:GridViewDataTextColumn FieldName="Code" ShowInCustomizationForm="True" VisibleIndex="1">
                                                                                           
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
                                                         

                                                       
                                                          <dx:GridViewColumnLayoutItem  Caption="Good">
                                                                <Template>
                                                                       <dx:ASPxComboBox ID="Good" runat="server" DataSourceID="SqlDataSource7" TextField="TypeCode"  Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [TypeCode] FROM [Good]"></asp:SqlDataSource>
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

                                                                                  </dx:ASPxGridView>
                          

                                                            
                          

                                                                              </dx:ContentControl>
                                                                          </ContentCollection>
                                                                      </dx:TabPage>


                                                                   <dx:TabPage Text="Staff" Visible="true">
                                                                          <ContentCollection>
                                                                              <dx:ContentControl runat="server">
                                                                                  
                                                                              
                                                           
                                                                                  <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" DataSourceID="staff" KeyFieldName="Id" Theme="Material" ClientInstanceName="grid_Staff" OnCustomCallback="ASPxGridView4_CustomCallback" OnLoad="ASPxGridView4_Load"  Width="100%"  OnRowInserting="ASPxGridView4_RowInserting" OnRowUpdating="ASPxGridView4_RowUpdating">

                                                                                      <Settings ShowGroupPanel="True" />
                                                                                      
                                                                                   <settingspager pagesize="50" numericbuttoncount="3" />

                                                                                  <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true"></SettingsAdaptivity>

                                                                               
                                                                              
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
                                                                                          <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="5" AdaptivePriority="4">
                                                                                          </dx:GridViewCommandColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1"  Visible="false">
                                                                                              <EditFormSettings Visible="False" />
                                                                                          </dx:GridViewDataTextColumn>
                                                                                          <dx:GridViewDataTextColumn FieldName="Good_Id" ShowInCustomizationForm="True" VisibleIndex="2" Visible="false">
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
                                              <dx:GridViewColumnLayoutItem  Caption="Good">
                                                      <Template>
                                                                       <dx:ASPxComboBox ID="Good" runat="server" DataSourceID="SqlDataSource22" TextField="TypeCode" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [TypeCode] FROM [Good]"></asp:SqlDataSource>
                                                               </Template>

                                                          </dx:GridViewColumnLayoutItem>
                                                         

                                                       
                                                          <dx:GridViewColumnLayoutItem  ColumnName="ownerType">

                                                          </dx:GridViewColumnLayoutItem>
                                                          <dx:GridViewColumnLayoutItem  Caption="Staff">
                                                               <Template>
                                                                       <dx:ASPxComboBox ID="Staff" runat="server" DataSourceID="SqlDataSource22" TextField="PositionId" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [PositionId] FROM [Staff]"></asp:SqlDataSource>
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




                                     

                                                                     <asp:SqlDataSource ID="test" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectationEvent] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectationEvent] ([Event_Id], [Good_Id], [Adresse_Id], [Duree], [ownerType]) VALUES (@Event_Id, @Good_Id, @Adresse_Id, @Duree, @ownerType)" SelectCommand="SELECT * FROM AffectationEvent,Event WHERE ( Event.Id = AffectationEvent.Event_Id AND AffectationEvent.Good_Id=@Id)" UpdateCommand="UPDATE [AffectationEvent] SET [Event_Id] = @Event_Id, [Good_Id] = @Good_Id, [Adresse_Id] = @Adresse_Id, [Duree] = @Duree, [ownerType] = @ownerType WHERE [Id] = @Id">
                                                                                  <DeleteParameters>
                                                                                      <asp:Parameter Name="Id" Type="Int64" />
                                                                                  </DeleteParameters>
                                                                                  <InsertParameters>
                                                                                      <asp:Parameter Name="Event_Id" Type="Int32" />
                                                                                      <asp:Parameter Name="Good_Id" Type="Int64" />
                                                                                      <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                                                                      <asp:Parameter Name="Duree" Type="Int32" />
                                                                                      <asp:Parameter Name="ownerType" Type="String" />
                                                                                  </InsertParameters>
                                                                           <SelectParameters>
                                                          
                                           
                                                                              <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                                                    </SelectParameters>
                                                                                  <UpdateParameters>
                                                                                      <asp:Parameter Name="Event_Id" Type="Int32" />
                                                                                      <asp:Parameter Name="Good_Id" Type="Int64" />
                                                                                      <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                                                                      <asp:Parameter Name="Duree" Type="Int32" />
                                                                                      <asp:Parameter Name="ownerType" Type="String" />
                                                                                      <asp:Parameter Name="Id" Type="Int64" />
                                                                                  </UpdateParameters>
                                                                             </asp:SqlDataSource>
                                                                     
                                                 
                                                       
                                 <asp:SqlDataSource ID="test16" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectaionDocument] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectaionDocument] ([Id_Good], [PartnerDocs_Id], [ownerType]) VALUES (@Id_Good, @PartnerDocs_Id, @ownerType)" SelectCommand="SELECT * FROM AffectaionDocument,PartnerDocs WHERE(PartnerDocs.Id=AffectaionDocument.PartnerDocs_Id AND AffectaionDocument.Id_Good=@Id )" UpdateCommand="UPDATE [AffectaionDocument] SET [Id_Good] = @Id_Good, [PartnerDocs_Id] = @PartnerDocs_Id, [ownerType] = @ownerType WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Id_Good" Type="Int64" />
                                         <asp:Parameter Name="PartnerDocs_Id" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                     </InsertParameters>
                                       <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Id_Good" Type="Int64" />
                                         <asp:Parameter Name="PartnerDocs_Id" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>
                                                

                                                 <asp:SqlDataSource ID="test17" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectationAdresse] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectationAdresse] ([Adresse_Id], [Good_Id], [NatureUsage_Label], [date_debut], [date_fin]) VALUES (@Adresse_Id, @Good_Id, @NatureUsage_Label, @date_debut, @date_fin)" SelectCommand="SELECT * FROM AffectationAdresse,Adresse WHERE (Adresse.Id = AffectationAdresse.Adresse_Id AND AffectationAdresse.Good_Id=@Id)" UpdateCommand="UPDATE [AffectationAdresse] SET [Adresse_Id] = @Adresse_Id, [Good_Id] = @Good_Id, [NatureUsage_Label] = @NatureUsage_Label, [date_debut] = @date_debut, [date_fin] = @date_fin WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="Good_Id" Type="Int64" />
                                         <asp:Parameter Name="NatureUsage_Label" Type="String" />
                                         <asp:Parameter DbType="Date" Name="date_debut" />
                                         <asp:Parameter DbType="Date" Name="date_fin" />
                                     </InsertParameters>
                                      <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="Good_Id" Type="Int64" />
                                         <asp:Parameter Name="NatureUsage_Label" Type="String" />
                                         <asp:Parameter DbType="Date" Name="date_debut" />
                                         <asp:Parameter DbType="Date" Name="date_fin" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>
                               
                                     
                                       <asp:SqlDataSource ID="staff" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectaionStaff] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectaionStaff] ( [Good_Id], [ownerType], [Staff_Id]) VALUES ( @Good_Id, @ownerType, @Staff_Id)" SelectCommand="SELECT * FROM AffectaionStaff,Staff WHERE (Staff.Id = AffectaionStaff.Staff_Id AND AffectaionStaff.Good_Id=@Id)" UpdateCommand="UPDATE [AffectaionStaff] SET [Good_Id] = @Good_Id, [ownerType] = @ownerType, [Staff_Id] = @Staff_Id WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                  
                                         <asp:Parameter Name="Good_Id" Type="Int64" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Staff_Id" Type="Int64" />
                                     </InsertParameters>
                                            <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Good_Id" Type="Int64" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Staff_Id" Type="Int64" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>
                                      

                            
                                     <asp:SqlDataSource ID="goo" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [Good] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Good] ([TypeCode], [Reference], [BarCode], [TaxCode], [UnitCode], [Label], [Description], [ObtaningDate], [PurchasingPrice], [SellingPrice], [FamilyCode], [DelivryDate], [WarantyPeriod], [StockTrakingMethodCode], [PackagingTypeCode], [StorageCondition], [SpecialPrecaution], [Photo], [note]) VALUES (@TypeCode, @Reference, @BarCode, @TaxCode, @UnitCode, @Label, @Description, @ObtaningDate, @PurchasingPrice, @SellingPrice, @FamilyCode, @DelivryDate, @WarantyPeriod, @StockTrakingMethodCode, @PackagingTypeCode, @StorageCondition, @SpecialPrecaution, @Photo, @note)" SelectCommand="SELECT * FROM [Good]" UpdateCommand="UPDATE [Good] SET [TypeCode] = @TypeCode, [Reference] = @Reference, [BarCode] = @BarCode, [TaxCode] = @TaxCode, [UnitCode] = @UnitCode, [Label] = @Label, [Description] = @Description, [ObtaningDate] = @ObtaningDate, [PurchasingPrice] = @PurchasingPrice, [SellingPrice] = @SellingPrice, [FamilyCode] = @FamilyCode, [DelivryDate] = @DelivryDate, [WarantyPeriod] = @WarantyPeriod, [StockTrakingMethodCode] = @StockTrakingMethodCode, [PackagingTypeCode] = @PackagingTypeCode, [StorageCondition] = @StorageCondition, [SpecialPrecaution] = @SpecialPrecaution, [Photo] = @Photo, [note] = @note WHERE [Id] = @Id">
                                         <DeleteParameters>
                                             <asp:Parameter Name="Id" Type="Int64" />
                                         </DeleteParameters>
                                         <InsertParameters>
                                             <asp:Parameter Name="TypeCode" Type="String" />
                                             <asp:Parameter Name="Reference" Type="String" />
                                             <asp:Parameter Name="BarCode" Type="String" />
                                             <asp:Parameter Name="TaxCode" Type="String" />
                                             <asp:Parameter Name="UnitCode" Type="String" />
                                             <asp:Parameter Name="Label" Type="String" />
                                             <asp:Parameter Name="Description" Type="String" />
                                             <asp:Parameter DbType="Date" Name="ObtaningDate" />
                                             <asp:Parameter Name="PurchasingPrice" Type="Double" />
                                             <asp:Parameter Name="SellingPrice" Type="Double" />
                                             <asp:Parameter Name="FamilyCode" Type="String" />
                                             <asp:Parameter DbType="Date" Name="DelivryDate" />
                                             <asp:Parameter Name="WarantyPeriod" Type="Double" />
                                             <asp:Parameter Name="StockTrakingMethodCode" Type="String" />
                                             <asp:Parameter Name="PackagingTypeCode" Type="String" />
                                             <asp:Parameter Name="StorageCondition" Type="String" />
                                             <asp:Parameter Name="SpecialPrecaution" Type="String" />
                                             <asp:Parameter Name="Photo" Type="String" />
                                             <asp:Parameter Name="note" Type="String" />
                                         </InsertParameters>
                                         <UpdateParameters>
                                             <asp:Parameter Name="TypeCode" Type="String" />
                                             <asp:Parameter Name="Reference" Type="String" />
                                             <asp:Parameter Name="BarCode" Type="String" />
                                             <asp:Parameter Name="TaxCode" Type="String" />
                                             <asp:Parameter Name="UnitCode" Type="String" />
                                             <asp:Parameter Name="Label" Type="String" />
                                             <asp:Parameter Name="Description" Type="String" />
                                             <asp:Parameter DbType="Date" Name="ObtaningDate" />
                                             <asp:Parameter Name="PurchasingPrice" Type="Double" />
                                             <asp:Parameter Name="SellingPrice" Type="Double" />
                                             <asp:Parameter Name="FamilyCode" Type="String" />
                                             <asp:Parameter DbType="Date" Name="DelivryDate" />
                                             <asp:Parameter Name="WarantyPeriod" Type="Double" />
                                             <asp:Parameter Name="StockTrakingMethodCode" Type="String" />
                                             <asp:Parameter Name="PackagingTypeCode" Type="String" />
                                             <asp:Parameter Name="StorageCondition" Type="String" />
                                             <asp:Parameter Name="SpecialPrecaution" Type="String" />
                                             <asp:Parameter Name="Photo" Type="String" />
                                             <asp:Parameter Name="note" Type="String" />
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
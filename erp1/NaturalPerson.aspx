<%@ Page Language="C#" MasterPageFile="~/erp.Master" AutoEventWireup="true" CodeBehind="NaturalPerson.aspx.cs" Inherits="erp1.WebForm1" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

   


   <asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" type="text/css" href="Styles/Style.css" />
       <form id="form1" runat="server"  >
           
            <script type="text/javascript">
                function OnFocusedCardChanged(s,e) {
                    cardView.GetCardValues(cardView.GetFocusedCardIndex(), 'JeuneFilleName;Position;DateOfBirth;MaritalStatus;SocialSecurityRef;FatherId;MotherId;State;DeathDate;Sexe;Fax;note', OnGetCardValues);
                    grid_Event.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                    grid_Document.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                    grid_Adresse.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));
                    grid_Staff.PerformCallback(s.GetCardKey(s.GetFocusedCardIndex()));

                   

                }
                function OnGetCardValues(values) {
                    var editors = [ JeuneFilleName, Position, DateOfBirth, MaritalStatus, SocialSecurityRef, FatherId, MotherId, State, DeathDate, Sexe, Fax ,note];
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
           
          }
            #D1
            {
             border-collapse:separate;
             border-spacing:8px;
             width:100%;
            
             
          
            }
              #D2
            {
             border-collapse:separate;
             border-spacing:8px;
             width:35%;
            
             
             
          
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
             width:35%;
             
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
    </style>


          
        <div class="container" style="width:100%" >
	         <div class="row" >
		       <div class="col-md-12">
                  <div class="card"  >
                  <ul class="nav nav-stacked nav-justified" role="tablist">
                   <li role="presentation" class="active"> <a href="#NaturalPerson" aria-controls="NaturalPerson" role="tab" data-toggle="tab">  </a></li>
                                    
                    </ul>
                       <div class="tab-content"  >
                                 <div role="tabpanel" class="tab-pane active " id="NaturalPerson"  >

                                     <dx:ASPxCardView ID="ASPxCardView1" runat="server" ClientInstanceName="cardView" EnableCardsCache="False" Width="100%"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id" Theme="Material"  OnCardInserting="ASPxCardView1_CardInserting" OnCardUpdating="ASPxCardView1_CardUpdating" >
                                          <ClientSideEvents FocusedCardChanged="OnFocusedCardChanged" />
                                   
                                            
                                              <CardLayoutProperties  >
                                           <Items>
                                               <dx:CardViewCommandLayoutItem HorizontalAlign="Right" ShowDeleteButton="True" ShowEditButton="True" ShowNewButton="True">
                                               </dx:CardViewCommandLayoutItem>
                                <dx:CardViewColumnLayoutItem ColumnName="Photo" ShowCaption="False" HorizontalAlign="Center" />
                              <dx:CardViewColumnLayoutItem ShowCaption="False" HorizontalAlign="Center">
                              <Template>
                            <dx:ASPxLabel runat="server" Text='<%# Eval("FullName") %>' />
                                </Template>
                           </dx:CardViewColumnLayoutItem>

                          <dx:CardViewColumnLayoutItem ColumnName="Tel" ShowCaption="False" HorizontalAlign="Center" />
                           
                          <dx:CardViewColumnLayoutItem ColumnName="Email" ShowCaption="False" HorizontalAlign="Center" />

                            </Items>
                             </CardLayoutProperties>

                                     
                                              
                                             

                                          <SettingsSearchPanel Visible="True" />

                                     
                                              
                                             

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
                                                                                  <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="FirstName:" Theme="Material" ></dx:ASPxLabel>
                                                                              </td>
                                                                            
                                                                              <td>
                                                                                  <dx:ASPxTextBox ID="f"  ClientInstanceName="f"  Text='<%# Eval("FirstName") %>' runat="server"   Width="100%" Theme="Material"></dx:ASPxTextBox>
                                                                                 
                                                                                 
                                                                              </td>
                                                                             
                                                                             
                                                                            
                                                                          </tr>
                                                                       
                                                                       
                                                                        
                                                                            <tr>
                                                                                 
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="LastName:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                 
                                                                                  <dx:ASPxTextBox ID="l" ClientInstanceName="l" Text='<%# Eval("LastName") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                          
                                                                            <tr>
                                                                              
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="JeuneFilleName:" Theme="Material" ></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                  <dx:ASPxTextBox ID="j" ClientInstanceName="j" Text='<%# Eval("JeuneFilleName") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                    
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                           
                                                                           <tr>
                                                                              
                                                                               
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Position:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                    <dx:ASPxTextBox ID="p" ClientInstanceName="p" Text='<%# Eval("Position") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                    
                                                                                  
                                                                                

                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                           <tr>
                                                                              
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="DateOfBirth:"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                  <dx:ASPxDateEdit ID="d" ClientInstanceName="d" TabIndex="1" Text='<%# Eval("DateOfBirth") %>' runat="server"  Width="100%" Theme="Material">

                                                                                  </dx:ASPxDateEdit>
                                                                         
                                                                                 
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
                                                                                  <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="MaritalStatus:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                              <dx:ASPxTextBox  ID="m" ClientInstanceName="m"  Text='<%# Eval("MaritalStatus") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                
                                                                               
                                                                              </td>
                                                                              
                                                                          </tr>

                                                                            <tr>
                                                                              
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="SocialSecurityRef:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                                
                                                                              <td>
                                                                                    <dx:ASPxTextBox  ID="s" ClientInstanceName="s"  Text='<%# Eval("SocialSecurityRef") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                
                                                                               
                                                                             
                                                                              </td>
                                                                              
                                                                          </tr>





                                                                         <tr>
                                                                            
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="FatherId:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                    <dx:ASPxTextBox  ID="fa" ClientInstanceName="fa" Text='<%# Eval("FatherId") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                               
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                          
                                                                           <tr>
                                                                           
                                                                               
                                                                          
                                                                               
                                                                     
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel10" runat="server" Text="MotherId:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                    <dx:ASPxTextBox  ID="mo" ClientInstanceName="mo"  Text='<%# Eval("MotherId") %>'  runat="server"  Theme="Material" Width="100%" >

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
                                                                                  <dx:ASPxLabel ID="ASPxLabel11" runat="server" Text="State:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                    <dx:ASPxTextBox   ID="st" ClientInstanceName="st" Text='<%# Eval("State") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>

                                                                            <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel12" runat="server" Text="DeathDate:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                                
                                                                              <td>
                                                                                   <dx:ASPxTextBox  ID="da" ClientInstanceName="da" Text='<%# Eval("DeathDate") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                                  
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel13" runat="server" Text="Sexe:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox  ID="sex" ClientInstanceName="sex" Text='<%# Eval("Sexe") %>' runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
                                                                                 
                                                                                 
                                                                              </td>
                                                                              
                                                                          </tr>
                                                                               <tr>
                                                                              <td>
                                                                                  <dx:ASPxLabel ID="ASPxLabel14" runat="server" Text="Email:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox  ID="em" ClientInstanceName="em"  Text='<%# Eval("Email") %>'  runat="server"  Theme="Material" Width="100%" >

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
                                                                                   <dx:ASPxLabel ID="ASPxLabel15" runat="server" Text="Tel:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox  ID="te" ClientInstanceName="te" Text='<%# Eval("Tel") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                      
                                                                              </td>
                                                                          </tr>
                                                                          <tr>
                                                                                <td></td>
                                                                              <td>
                                                                                    <dx:ASPxLabel ID="ASPxLabel16" runat="server" Text="Fax:" Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxTextBox ID="fax" ClientInstanceName="fax" Text='<%# Eval("Fax") %>'  runat="server"  Theme="Material" Width="100%" >

                                                                                  </dx:ASPxTextBox>
                                                                                 
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

                                     
                                              
                                             

                                          <Columns >
                                              <dx:CardViewTextColumn FieldName="Id" ReadOnly="True" Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewImageColumn FieldName="Photo" >
                                                  <PropertiesImage ImageHeight="150px"  ImageUrlFormatString="~/Image/{0}" ImageWidth="160px">
                                                  </PropertiesImage>
                                              </dx:CardViewImageColumn>
                                              <dx:CardViewTextColumn FieldName="FirstName"   >
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="LastName" >
                                              </dx:CardViewTextColumn>
                                               <dx:CardViewColumn FieldName="FullName" UnboundType="String" UnboundExpression="[FirstName] + '&nbsp;' + [LastName]" />
                                              <dx:CardViewTextColumn FieldName="JeuneFilleName"  Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="Position" Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="Adress"  Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewDateColumn FieldName="DateOfBirth"  Visible="False">
                                              </dx:CardViewDateColumn>
                                              <dx:CardViewTextColumn FieldName="MaritalStatus"  Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="SocialSecurityRef"  Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="FatherId" Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="MotherId"  Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="State"  Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewDateColumn FieldName="DeathDate" Visible="False">
                                              </dx:CardViewDateColumn>
                                              <dx:CardViewTextColumn FieldName="Sexe"  Visible="False">
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="Email" >
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="Tel"  >
                                              </dx:CardViewTextColumn>
                                              <dx:CardViewTextColumn FieldName="Fax" Visible="False">
                                              </dx:CardViewTextColumn>
                                               <dx:CardViewTextColumn FieldName="note" Visible="False">
                                              </dx:CardViewTextColumn>

                                          </Columns>
                                                                        
                                         <SettingsEditing Mode="PopupEditForm" />
                                                <SettingsEditing  Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True"  >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                                     

                                          <SettingsSearchPanel Visible="True" />
                                                      
                                                     
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
                                 

                                                  </dx:ASPxCardView>

                                     

  <div class="panel-group" id="accordion" style="    padding-top: 5px;  width: 100%;background: #eee;">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"> <span class="glyphicon glyphicon-user"></span> Person Information</a>
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
                                                                                 <dx:ASPxLabel  runat="server"  Text="JeuneFilleName:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="JeuneFilleName" ClientInstanceName="JeuneFilleName" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="Position:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="Position" ClientInstanceName="Position" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                            <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="DateOfBirth:"  Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="DateOfBirth" ClientInstanceName="DateOfBirth" runat="server"  Theme="Material"></dx:ASPxLabel>
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
                                                                                    <dx:ASPxLabel  runat="server" Text="MaritalStatus:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="MaritalStatus" ClientInstanceName="MaritalStatus" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                          <tr >
                                                                              <td>
                                                                                 <dx:ASPxLabel  runat="server"  Text="SocialSecurityRef:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="SocialSecurityRef" ClientInstanceName="SocialSecurityRef" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td >
                                                                                    <dx:ASPxLabel  runat="server" Text="FatherId:"  Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="FatherId" ClientInstanceName="FatherId" runat="server"  Theme="Material" ></dx:ASPxLabel>
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
                                                                                    <dx:ASPxLabel  runat="server" Text="MotherId:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="MotherId" ClientInstanceName="MotherId" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="State:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="State" ClientInstanceName="State" runat="server"  Theme="Material"></dx:ASPxLabel>
                                                                              </td>
                                                                          </tr>
                                                                          <tr>
                                                                              <td>
                                                                                 <dx:ASPxLabel  runat="server"  Text="DeathDate:"  Theme="Material"></dx:ASPxLabel> 

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="DeathDate" ClientInstanceName="DeathDate" runat="server"  Theme="Material"></dx:ASPxLabel>
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
                                                                                    <dx:ASPxLabel  runat="server" Text="Sexe:"   Theme="Material"></dx:ASPxLabel>

                                                                              </td>
                                                                              <td>
                                                                                   <dx:ASPxLabel ID="Sexe" ClientInstanceName="Sexe" runat="server"  Theme="Material"></dx:ASPxLabel>
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
                                                                           <tr>
                                                                              <td>
                                                                                    <dx:ASPxLabel  runat="server" Text="note:"   Theme="Material"></dx:ASPxLabel>

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
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"> <span class="glyphicon glyphicon-list-alt"></span> Person detail</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">

            
                                              <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" EnableTheming="True" Theme="Material" Width="100%">
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
                                                                                     <dx:GridViewDataTextColumn FieldName="PersonnePysique_Id" ShowInCustomizationForm="True" Visible="false">
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
                                                            <dx:GridViewColumnLayoutItem  Caption="PersonnePysique">
                                                                <Template>
                                                                        <dx:ASPxComboBox ID="PersonnePysique" runat="server" DataSourceID="SqlDataSource2" TextField="FirstName"  Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [FirstName] FROM [NaturalPerson]"></asp:SqlDataSource>
                                                                    
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


                                                                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid_Document" DataSourceID="test16" KeyFieldName="Id" Theme="Material" OnCustomCallback="ASPxGridView2_CustomCallback" OnLoad="ASPxGridView2_Load"  Width="100%" OnRowInserting="ASPxGridView2_RowInserting" OnRowUpdating="ASPxGridView2_RowUpdating">
                                                                                <settingspager pagesize="50" numericbuttoncount="6" />

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
                                                                                    <dx:GridViewDataTextColumn FieldName="PersonnePysique_Id" ShowInCustomizationForm="True" Visible="false">
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
                                                           
                                                            <dx:GridViewColumnLayoutItem Caption="PersonnePysique">
                                                                 <Template>
                                                                       <dx:ASPxComboBox ID="PersonnePysique" runat="server" DataSourceID="SqlDataSource4" TextField="FirstName" Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [FirstName] FROM [NaturalPerson]"></asp:SqlDataSource>
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
                                                                                          <dx:GridViewDataTextColumn FieldName="PersonnePysique_Id" ShowInCustomizationForm="True" VisibleIndex="5" Visible="false">
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
                                                         

                                                       
                                                          <dx:GridViewColumnLayoutItem  Caption="PersonnePysique">
                                                                <Template>
                                                                       <dx:ASPxComboBox ID="PersonnePysique" runat="server" DataSourceID="SqlDataSource7" TextField="FirstName"  Theme="Material" Width="100%">

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [FirstName] FROM [NaturalPerson]"></asp:SqlDataSource>
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
                                                                                          <dx:GridViewDataTextColumn FieldName="PersonnePysique_Id" ShowInCustomizationForm="True" VisibleIndex="2" Visible="false">
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
                                                <SettingsEditing EditFormColumnCount="3" Mode="PopupEditForm"  />

                                                 <SettingsPopup EditForm-HorizontalAlign="WindowCenter" EditForm-Modal="True" >
            
                                                     <EditForm />
                                                    </SettingsPopup>
                                                                                       <EditFormLayoutProperties>
                                               <Items>
                                      <dx:GridViewLayoutGroup GroupBoxDecoration="None">
                                        <Items>
                                              <dx:GridViewColumnLayoutItem  Caption="PersonnePysique">
                                                      <Template>
                                                                       <dx:ASPxComboBox ID="PersonnePysique" runat="server" DataSourceID="tr" TextField="FirstName"  Theme="Material" Width="100%" >

                                                                       </dx:ASPxComboBox>
                               
                                                               <asp:SqlDataSource ID="tr" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" SelectCommand="SELECT [FirstName] FROM [NaturalPerson]"></asp:SqlDataSource>
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

                                    







                                       <asp:SqlDataSource ID="test" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectationEvent] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectationEvent] ([Event_Id], [PersonnePysique_Id], [Adresse_Id], [Duree], [ownerType]) VALUES (@Event_Id, @PersonnePysique_Id, @Adresse_Id, @Duree, @ownerType)" SelectCommand="SELECT * FROM AffectationEvent,Event WHERE (Event.Id = AffectationEvent.Event_Id AND AffectationEvent.PersonnePysique_Id=@Id) " UpdateCommand="UPDATE [AffectationEvent] SET [Event_Id] = @Event_Id, [PersonnePysique_Id] = @PersonnePysique_Id, [Adresse_Id] = @Adresse_Id, [Duree] = @Duree, [ownerType] = @ownerType WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Event_Id" Type="Int32" />
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="Duree" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                     </InsertParameters>
                                         <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Event_Id" Type="Int32" />
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="Duree" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>
                           

                                     
                                                 
                                 <asp:SqlDataSource ID="test16" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectaionDocument] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectaionDocument] ([PersonnePysique_Id], [PartnerDocs_Id], [ownerType]) VALUES (@PersonnePysique_Id, @PartnerDocs_Id, @ownerType)" SelectCommand="SELECT * FROM AffectaionDocument,PartnerDocs WHERE(PartnerDocs.Id=AffectaionDocument.PartnerDocs_Id AND AffectaionDocument.PersonnePysique_Id=@Id )" UpdateCommand="UPDATE [AffectaionDocument] SET [PersonnePysique_Id] = @PersonnePysique_Id, [PartnerDocs_Id] = @PartnerDocs_Id, [ownerType] = @ownerType WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="PartnerDocs_Id" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                     </InsertParameters>
                                       <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="PartnerDocs_Id" Type="Int32" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>

                                                

                                                

                                               
                                 <asp:SqlDataSource ID="test17" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectationAdresse] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectationAdresse] ([Adresse_Id], [PersonnePysique_Id], [NatureUsage_Label], [date_debut], [date_fin]) VALUES (@Adresse_Id, @PersonnePysique_Id, @NatureUsage_Label, @date_debut, @date_fin)" SelectCommand="SELECT * FROM AffectationAdresse,Adresse WHERE (Adresse.Id = AffectationAdresse.Adresse_Id AND AffectationAdresse.PersonnePysique_Id=@Id)" UpdateCommand="UPDATE [AffectationAdresse] SET [Adresse_Id] = @Adresse_Id, [PersonnePysique_Id] = @PersonnePysique_Id, [NatureUsage_Label] = @NatureUsage_Label, [date_debut] = @date_debut, [date_fin] = @date_fin WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="NatureUsage_Label" Type="String" />
                                         <asp:Parameter DbType="Date" Name="date_debut" />
                                         <asp:Parameter DbType="Date" Name="date_fin" />
                                     </InsertParameters>
                                      <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Adresse_Id" Type="Int64" />
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="NatureUsage_Label" Type="String" />
                                         <asp:Parameter DbType="Date" Name="date_debut" />
                                         <asp:Parameter DbType="Date" Name="date_fin" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>
                                   
                                                


                                        <asp:SqlDataSource ID="staff" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [AffectaionStaff] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AffectaionStaff] ( [PersonnePysique_Id], [ownerType], [Staff_Id]) VALUES ( @PersonnePysique_Id, @ownerType, @Staff_Id)" SelectCommand="SELECT * FROM AffectaionStaff,Staff WHERE (Staff.Id = AffectaionStaff.Staff_Id AND AffectaionStaff.PersonnePysique_Id=@Id)" UpdateCommand="UPDATE [AffectaionStaff] SET [PersonnePysique_Id] = @Good_Id, [PersonnePysique_Id] = @ownerType, [Staff_Id] = @Staff_Id WHERE [Id] = @Id">
                                     <DeleteParameters>
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                  
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Staff_Id" Type="Int64" />
                                     </InsertParameters>
                                            <SelectParameters>
                                                          
                                            <asp:Parameter DefaultValue="1" Name="Id"  Type="Int64"/>
                                                </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="PersonnePysique_Id" Type="Int64" />
                                         <asp:Parameter Name="ownerType" Type="String" />
                                         <asp:Parameter Name="Staff_Id" Type="Int64" />
                                         <asp:Parameter Name="Id" Type="Int64" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>

                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erpConnectionString %>" DeleteCommand="DELETE FROM [NaturalPerson] WHERE [Id] = @Id" InsertCommand="INSERT INTO [NaturalPerson] ([FirstName], [LastName], [JeuneFilleName], [Position], [Adress], [DateOfBirth], [MaritalStatus], [SocialSecurityRef], [FatherId], [MotherId], [State], [DeathDate], [Sexe], [Photo], [Email], [Tel], [Fax], [note]) VALUES (@FirstName, @LastName, @JeuneFilleName, @Position, @Adress, @DateOfBirth, @MaritalStatus, @SocialSecurityRef, @FatherId, @MotherId, @State, @DeathDate, @Sexe, @Photo, @Email, @Tel, @Fax, @note)" SelectCommand="SELECT * FROM [NaturalPerson]" UpdateCommand="UPDATE [NaturalPerson] SET [FirstName] = @FirstName, [LastName] = @LastName, [JeuneFilleName] = @JeuneFilleName, [Position] = @Position, [Adress] = @Adress, [DateOfBirth] = @DateOfBirth, [MaritalStatus] = @MaritalStatus, [SocialSecurityRef] = @SocialSecurityRef, [FatherId] = @FatherId, [MotherId] = @MotherId, [State] = @State, [DeathDate] = @DeathDate, [Sexe] = @Sexe, [Photo] = @Photo, [Email] = @Email, [Tel] = @Tel, [Fax] = @Fax, [note] = @note WHERE [Id] = @Id">
                                         <DeleteParameters>
                                             <asp:Parameter Name="Id" Type="Int64" />
                                         </DeleteParameters>
                                         <InsertParameters>
                                             <asp:Parameter Name="FirstName" Type="String" />
                                             <asp:Parameter Name="LastName" Type="String" />
                                             <asp:Parameter Name="JeuneFilleName" Type="String" />
                                             <asp:Parameter Name="Position" Type="String" />
                                             <asp:Parameter Name="Adress" Type="String" />
                                             <asp:Parameter DbType="Date" Name="DateOfBirth" />
                                             <asp:Parameter Name="MaritalStatus" Type="String" />
                                             <asp:Parameter Name="SocialSecurityRef" Type="String" />
                                             <asp:Parameter Name="FatherId" Type="String" />
                                             <asp:Parameter Name="MotherId" Type="String" />
                                             <asp:Parameter Name="State" Type="String" />
                                             <asp:Parameter DbType="Date" Name="DeathDate" />
                                             <asp:Parameter Name="Sexe" Type="String" />
                                             <asp:Parameter Name="Photo" Type="String" />
                                             <asp:Parameter Name="Email" Type="String" />
                                             <asp:Parameter Name="Tel" Type="String" />
                                             <asp:Parameter Name="Fax" Type="String" />
                                              
                                             <asp:Parameter Name="note" Type="String" />
                                              
                                         </InsertParameters>
                                         <UpdateParameters>
                                             <asp:Parameter Name="FirstName" Type="String" />
                                             <asp:Parameter Name="LastName" Type="String" />
                                             <asp:Parameter Name="JeuneFilleName" Type="String" />
                                             <asp:Parameter Name="Position" Type="String" />
                                             <asp:Parameter Name="Adress" Type="String" />
                                             <asp:Parameter DbType="Date" Name="DateOfBirth" />
                                             <asp:Parameter Name="MaritalStatus" Type="String" />
                                             <asp:Parameter Name="SocialSecurityRef" Type="String" />
                                             <asp:Parameter Name="FatherId" Type="String" />
                                             <asp:Parameter Name="MotherId" Type="String" />
                                             <asp:Parameter Name="State" Type="String" />
                                             <asp:Parameter DbType="Date" Name="DeathDate" />
                                             <asp:Parameter Name="Sexe" Type="String" />
                                             <asp:Parameter Name="Photo" Type="String" />
                                             <asp:Parameter Name="Email" Type="String" />
                                             <asp:Parameter Name="Tel" Type="String" />
                                             <asp:Parameter Name="Fax" Type="String" />
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


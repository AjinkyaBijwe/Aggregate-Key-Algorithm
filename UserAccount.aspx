<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="BasicInfoView.aspx.cs" Inherits="BasicInfoView" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                              <table style="width: 100%; height: 766px; font-family: Roboto; font-size: large;">
                                  <tr>
                                      <td align="left" class="auto-style58" valign="top" bgcolor="#BBDCFE">
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                              SelectCommand="SELECT * FROM [BasicInfo] WHERE ([MobNo] = @MobNo)" 
                                              InsertCommand="INSERT INTO [BasicInfo] ([Name1], [EmailID], [MobNo], [MobNo1], [District], [City], [PerAddress], [CurAddress], [Gender], [MaritalStatus], [Cast], [DOB]) VALUES (@Name1, @EmailID, @MobNo, @MobNo1, @District, @City, @PerAddress, @CurAddress, @Gender, @MaritalStatus, @Cast, @DOB)" 
                                              UpdateCommand="UPDATE [BasicInfo] SET [Name1] = @Name1, [EmailID] = @EmailID, [MobNo] = @MobNo, [MobNo1] = @MobNo1, [District] = @District, [City] = @City, [PerAddress] = @PerAddress, [CurAddress] = @CurAddress, [Gender] = @Gender, [MaritalStatus] = @MaritalStatus, [Cast] = @Cast, [DOB] = @DOB WHERE [ID] = @ID">
                                              <SelectParameters>
                                                  <asp:SessionParameter Name="MobNo" SessionField="UserMobNo" Type="String" />
                                              </SelectParameters>
                                              <DeleteParameters>
                                                  <asp:Parameter Name="ID" Type="Int32" />
                                              </DeleteParameters>
                                              <UpdateParameters>
                                                  <asp:Parameter Name="Name1" Type="String" />
                                                  <asp:Parameter Name="EmailID" Type="String" />
                                                  <asp:Parameter Name="MobNo" Type="String" />
                                                  <asp:Parameter Name="MobNo1" Type="String" />
                                                  <asp:Parameter Name="District" Type="String" />
                                                  <asp:Parameter Name="City" Type="String" />
                                                  <asp:Parameter Name="PerAddress" Type="String" />
                                                  <asp:Parameter Name="CurAddress" Type="String" />
                                                  <asp:Parameter Name="Gender" Type="String" />
                                                  <asp:Parameter Name="MaritalStatus" Type="String" />
                                                  <asp:Parameter Name="Cast" Type="String" />
                                                  <asp:Parameter Name="DOB" Type="String" />
                                                  <asp:Parameter Name="ID" Type="Int32" />
                                              </UpdateParameters>
                                              <InsertParameters>
                                                  <asp:Parameter Name="Name1" Type="String" />
                                                  <asp:Parameter Name="EmailID" Type="String" />
                                                  <asp:Parameter Name="MobNo" Type="String" />
                                                  <asp:Parameter Name="MobNo1" Type="String" />
                                                  <asp:Parameter Name="District" Type="String" />
                                                  <asp:Parameter Name="City" Type="String" />
                                                  <asp:Parameter Name="PerAddress" Type="String" />
                                                  <asp:Parameter Name="CurAddress" Type="String" />
                                                  <asp:Parameter Name="Gender" Type="String" />
                                                  <asp:Parameter Name="MaritalStatus" Type="String" />
                                                  <asp:Parameter Name="Cast" Type="String" />
                                                  <asp:Parameter Name="DOB" Type="String" />
                                              </InsertParameters>
                                          </asp:SqlDataSource>
                                          <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                                              DataSourceID="SqlDataSource1" Width="944px" Height="549px" CellPadding="4" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="Arial Black" Font-Overline="False" HeaderText="INFO" HorizontalAlign="Center" ForeColor="#333333">
                                              <EditItemTemplate>
                                                  &nbsp;<table style="width:88%; height: 600px; margin-left: 57px;">
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              ID</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:Label ID="IDLabel1" runat="server" Text='<%# Bind("ID") %>' Font-Size="Large" />
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              Name:</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="Name1TextBox" runat="server" CssClass="textbox" Text='<%# Bind("Name1") %>'  Height="30px" 
                                                                  Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              EmailID:</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:Label ID="Label1" Text='<%# Bind("EmailID") %>'  runat="server" Font-Size="Large"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" height="100px" style="font-family: Roboto; font-size: large">
                                                              Mobile Number:</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:Label ID="Label2" Text='<%# Bind("MobNo") %>'  runat="server" Font-Size="Large"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" height="100px" style="font-family: Roboto; font-size: large">
                                                              Other Number:
                                                          </td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="MobNo1TextBox" runat="server" Text='<%# Bind("MobNo1") %>' CssClass="textbox" Height="30px" 
                                                                  Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              District:</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="DistrictTextBox" runat="server" Text='<%# Bind("District") %>' CssClass="textbox" 
                                                                  Height="30px" Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style31" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              City:</td>
                                                          <td class="auto-style54" bgcolor="#CE85F5" valign="middle" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="CityTextBox" runat="server" CssClass="textbox" Text='<%# Bind("City") %>' Height="30px" 
                                                                  Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style55" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              Permanant Address:
                                                          </td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style53" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="PerAddressTextBox" runat="server" Text='<%# Bind("PerAddress") %>' CssClass="textbox" 
                                                                  Height="30px" Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              Current Address:
                                                          </td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="CurAddressTextBox" runat="server" Text='<%# Bind("CurAddress") %>' CssClass="textbox" 
                                                                  Height="30px" Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              Gender:
                                                          </td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' CssClass="textbox" Height="30px" 
                                                                  Width="353px" Font-Size="Large" />
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style56" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              Marital Status:</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style54" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' CssClass="textbox" 
                                                                  Height="30px" Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              Cast:</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="CastTextBox" runat="server" Text='<%# Bind("Cast") %>' CssClass="textbox" Height="30px" 
                                                                  Width="353px" Font-Size="Large"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style51" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              DOB:</td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style52" style="font-family: Roboto; font-size: large">
                                                              <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' CssClass="textbox" Height="30px" 
                                                                  Width="353px" Font-Size="Large" />
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style47" bgcolor="#D8C2FC" valign="middle" style="font-family: Roboto; font-size: large">
                                                              <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                                  CommandName="Update" Text="Update" onclick="UpdateButton_Click" />
                                                          </td>
                                                          <td bgcolor="#CE85F5" valign="middle" class="auto-style48" style="font-family: Roboto; font-size: large">
                                                              <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                          </td>
                                                      </tr>
                                                  </table>
                                                  <br />
                                                  <br />
                                                  </EditItemTemplate>
                                              <EditRowStyle BackColor="#2461BF" />
                                              <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                              <ItemTemplate>
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label3" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Name"></asp:Label>
                                                  &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
                                                  <asp:Label ID="Name1Label" runat="server" Text='<%# Bind("Name1") %>' Font-Size="Large" Font-Names="Roboto" ForeColor="#0066FF" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label4" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Email ID"></asp:Label>
                                                  &nbsp;:&nbsp;
                                                  <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Bind("EmailID") %>' Font-Size="Large" Font-Names="Roboto" ForeColor="#0066FF" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label5" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Name"></asp:Label>
                                                  :
                                                  <asp:Label ID="MobNoLabel" runat="server" Text='<%# Bind("MobNo") %>' Font-Size="Large" Font-Names="Roboto" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label6" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="City "></asp:Label>
                                                  :&nbsp;&nbsp;
                                                  <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' Font-Size="Large" Font-Names="Roboto" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label7" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Permanant Address"></asp:Label>
                                                  &nbsp;:
                                                  <asp:Label ID="PerAddressLabel" runat="server" 
                                                      Text='<%# Bind("PerAddress") %>' Font-Size="Large" Font-Names="Roboto" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label8" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Current Address"></asp:Label>
                                                  &nbsp;:&nbsp;
                                                  <asp:Label ID="CurAddressLabel" runat="server" 
                                                      Text='<%# Bind("CurAddress") %>' Font-Size="Large" Font-Names="Roboto" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label9" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Gender"></asp:Label>
                                                  &nbsp;:
                                                  <asp:Label ID="GenderLabel" runat="server" 
                                                      Text='<%# Bind("Gender") %>' Font-Size="Large" Font-Names="Roboto" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label10" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Marital Status"></asp:Label>
                                                  &nbsp;:
                                                  <asp:Label ID="MaritalStatusLabel" runat="server" 
                                                      Text='<%# Bind("MaritalStatus") %>' Font-Size="Large" Font-Names="Roboto" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:Label ID="Label11" runat="server" Font-Names="Roboto" ForeColor="#CC3300" Text="Date of Birth "></asp:Label>
                                                  :
                                                  <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' Font-Size="Large" Font-Names="Roboto" />
                                                  <br />
                                                  <br />
                                                  &nbsp;&nbsp;
                                                  <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                                      CommandName="Edit" Text="Edit" />
                                              </ItemTemplate>
                                              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                              <RowStyle BackColor="#EFF3FB" />
                                          </asp:FormView>
                                      </td>
                                  </tr>
                                  </table>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <script type="text/javascript" >

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode != 46 && charCode > 31
              && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
</script>
   
    <style type="text/css">
        
        input.textbox, textarea
       {
       
         float:left;
       
         border: 1px solid #FFC469; 
         height: 16px; 
         width: 230px;
       } 
        input.textbox:hover, input.textbox:focus 
        { 
        width:260px;    
        padding:3px 32px 3px 3px; 
        } 
    .style13
    {
        height: 256px;
    }
        .style14
        {
            height: 23px;
        }
        .style15
        {
            width: 158px;
        }
        .style16
        {
            height: 23px;
            width: 158px;
        }
    .auto-style1 {
        height: 23px;
        width: 303px;
    }
    .auto-style2 {
        width: 303px;
    }
    .auto-style31 {
        width: 181px;
        height: 46px;
    }
    .auto-style47 {
        width: 303px;
        height: 33px;
    }
    .auto-style48 {
        height: 33px;
    }
    .auto-style51 {
        width: 303px;
        height: 45px;
    }
    .auto-style52 {
        height: 45px;
    }
    .auto-style53 {
        height: 43px;
    }
    .auto-style54 {
        height: 46px;
    }
    .auto-style55 {
        width: 303px;
        height: 43px;
    }
    .auto-style56 {
        width: 303px;
        height: 46px;
    }
        .auto-style57 {
            height: 104px;
            width: 944px;
        }
        .auto-style58 {
            height: 256px;
            width: 944px;
        }
    </style>


</asp:Content>

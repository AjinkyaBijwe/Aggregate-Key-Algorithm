<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="BasicInfoView.aspx.cs" Inherits="BasicInfoView" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                              <table style="width: 100%; height: 469px;">
                                  <tr>
                                      <td align="left" class="style13" valign="top">
                                          <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                                              DataSourceID="SqlDataSource1" Width="944px" Height="445px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" Font-Bold="True" Font-Italic="False" Font-Names="Arial Black" Font-Overline="False" GridLines="Both" HeaderText="INFO" HorizontalAlign="Center">
                                              <EditItemTemplate>
                                                  &nbsp;<table style="width:100%;">
                                                      <tr>
                                                          <td class="style15">
                                                              ID</td>
                                                          <td>
                                                              <asp:Label ID="IDLabel1" runat="server" Text='<%# Bind("ID") %>' />
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              Name:</td>
                                                          <td>
                                                              <asp:TextBox ID="Name1TextBox" runat="server" CssClass="textbox" Text='<%# Bind("Name1") %>'  Height="16px" 
                                                                  Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              EmailID:</td>
                                                          <td>
                                                              <asp:Label ID="Label1" Text='<%# Bind("EmailID") %>'  runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              MobNo:</td>
                                                          <td>
                                                              <asp:Label ID="Label2" Text='<%# Bind("MobNo") %>'  runat="server"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              MobNo1:
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="MobNo1TextBox" runat="server" Text='<%# Bind("MobNo1") %>' CssClass="textbox" Height="16px" 
                                                                  Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              District:</td>
                                                          <td>
                                                              <asp:TextBox ID="DistrictTextBox" runat="server" Text='<%# Bind("District") %>' CssClass="textbox" 
                                                                  Height="16px" Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style16">
                                                              City:</td>
                                                          <td class="style14">
                                                              <asp:TextBox ID="CityTextBox" runat="server" CssClass="textbox" Text='<%# Bind("City") %>' Height="16px" 
                                                                  Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              PerAddress:
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="PerAddressTextBox" runat="server" Text='<%# Bind("PerAddress") %>' CssClass="textbox" 
                                                                  Height="16px" Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              CurAddress:
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="CurAddressTextBox" runat="server" Text='<%# Bind("CurAddress") %>' CssClass="textbox" 
                                                                  Height="16px" Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              Gender:
                                                          </td>
                                                          <td>
                                                              <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' CssClass="textbox" Height="16px" 
                                                                  Width="353px" />
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              MaritalStatus:</td>
                                                          <td>
                                                              <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' CssClass="textbox" 
                                                                  Height="16px" Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              Cast:</td>
                                                          <td>
                                                              <asp:TextBox ID="CastTextBox" runat="server" Text='<%# Bind("Cast") %>' CssClass="textbox" Height="16px" 
                                                                  Width="353px"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              DOB:</td>
                                                          <td>
                                                              <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' CssClass="textbox" Height="16px" 
                                                                  Width="353px" />
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td class="style15">
                                                              <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                                  CommandName="Update" Text="Update" onclick="UpdateButton_Click" />
                                                              <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                                                  CommandName="Cancel" Text="Cancel" />
                                                          </td>
                                                          <td>
                                                              &nbsp;</td>
                                                      </tr>
                                                  </table>
                                                  <br />
                                                  <br />
                                                  &nbsp;<br />
                                                  &nbsp;<br />
                                                  <br />
                                                  <br />
                                                  <br />
                                                  &nbsp;<br />
                                                  &nbsp;<br />
                                                  &nbsp;<br />
                                                  &nbsp;
                                              </EditItemTemplate>
                                              <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                              <FooterStyle BackColor="White" ForeColor="#000066" />
                                              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                              <ItemTemplate>
                                                  Name :&nbsp;&nbsp;&nbsp;&nbsp;
                                                  <asp:Label ID="Name1Label" runat="server" Text='<%# Bind("Name1") %>' />
                                                  <br />
                                                  Email ID :&nbsp;
                                                  <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Bind("EmailID") %>' />
                                                  <br />
                                                  Mobile No :
                                                  <asp:Label ID="MobNoLabel" runat="server" Text='<%# Bind("MobNo") %>' />
                                                  <br />
                                                  Mobile No1 :
                                                  <asp:Label ID="MobNo1Label" runat="server" Text='<%# Bind("MobNo1") %>' />
                                                  <br />
                                                  District :&nbsp;&nbsp;&nbsp;<asp:Label ID="DistrictLabel" runat="server" Text='<%# Bind("District") %>' />
                                                  <br />
                                                  City :&nbsp;&nbsp;
                                                  <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                                                  <br />
                                                  Permenant Address :
                                                  <asp:Label ID="PerAddressLabel" runat="server" 
                                                      Text='<%# Bind("PerAddress") %>' />
                                                  <br />
                                                  Curent Address :&nbsp;
                                                  <asp:Label ID="CurAddressLabel" runat="server" 
                                                      Text='<%# Bind("CurAddress") %>' />
                                                  <br />
                                                  Gender :
                                                  <asp:Label ID="GenderLabel" runat="server" 
                                                      Text='<%# Bind("Gender") %>' />
                                                  <br />
                                                  Marital Status :
                                                  <asp:Label ID="MaritalStatusLabel" runat="server" 
                                                      Text='<%# Bind("MaritalStatus") %>' />
                                                  <br />
                                                  Cast :
                                                  <asp:Label ID="CastLabel" runat="server" 
                                                      Text='<%# Bind("Cast") %>' />
                                                  <br />
                                                  Date of Birth :
                                                  <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                                                  <br />
                                                  <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                                      CommandName="Edit" Text="Edit" />
                                                  &nbsp;&nbsp;
                                              </ItemTemplate>
                                              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                              <RowStyle ForeColor="#000066" />
                                          </asp:FormView>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
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
                                      </td>
                                  </tr>
</table>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <script type="text/javascript" >
 
  function isNumberKey(evt)
   {
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
    </style>


</asp:Content>

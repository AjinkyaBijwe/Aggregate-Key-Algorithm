<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="UpdateAccount.aspx.cs" Inherits="UpdateAccount" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%; height: 294px;">
                                  <tr>
                                      <td align="left" class="style13" valign="top">
                                          <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                                              DataSourceID="SqlDataSource1" Height="415px" Width="933px" 
                                              BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                              CellPadding="3" GridLines="Horizontal" 
                                              onpageindexchanging="FormView1_PageIndexChanging">
                                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                              <EditItemTemplate>
                                                  ID:
                                                  <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                                                  <br />
                                                  Firstname:
                                                  <asp:TextBox ID="FirstnameTextBox" runat="server" 
                                                      Text='<%# Bind("Firstname") %>' />
                                                  <br />
                                                  LastName:
                                                  <asp:TextBox ID="LastNameTextBox" runat="server" 
                                                      Text='<%# Bind("LastName") %>' />
                                                  <br />
                                                  MobNo:
                                                  <asp:TextBox ID="MobNoTextBox" runat="server" Text='<%# Bind("MobNo") %>' />
                                                  <br />
                                                  EmailID:
                                                  <asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' />
                                                  <br />
                                                  Pass:
                                                  <asp:TextBox ID="PassTextBox" runat="server" Text='<%# Bind("Pass") %>' />
                                                  <br />
                                                  <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                      CommandName="Update" Text="Update" />
                                                  &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                      CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                              </EditItemTemplate>
                                           
                                            
                                              <ItemTemplate>
                                                  ID:
                                                  <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                                                  <br />
                                                  Firstname:
                                                  <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Bind("Firstname") %>' />
                                                  <br />
                                                  LastName:
                                                  <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                                                  <br />
                                                  MobNo:
                                                  <asp:Label ID="MobNoLabel" runat="server" Text='<%# Bind("MobNo") %>' />
                                                  <br />
                                                  EmailID:
                                                  <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Bind("EmailID") %>' />
                                                  <br />
                                                  Pass:
                                                  <asp:Label ID="PassLabel" runat="server" Text='<%# Bind("Pass") %>' />
                                                  <br />
                                              </ItemTemplate>
                                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                          </asp:FormView>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                              DeleteCommand="DELETE FROM [LoginData] WHERE [ID] = @ID" 
                                              InsertCommand="INSERT INTO [LoginData] ([Firstname], [LastName], [MobNo], [EmailID], [Pass]) VALUES (@Firstname, @LastName, @MobNo, @EmailID, @Pass)" 
                                              SelectCommand="SELECT * FROM [LoginData] WHERE ([EmailID] = @EmailID)" 
                                              
                                              UpdateCommand="UPDATE [LoginData] SET [Firstname] = @Firstname, [LastName] = @LastName, [MobNo] = @MobNo, [EmailID] = @EmailID, [Pass] = @Pass WHERE [ID] = @ID">
                                              <SelectParameters>
                                                  <asp:SessionParameter Name="EmailID" SessionField="UserNa" Type="String" />
                                              </SelectParameters>
                                              <DeleteParameters>
                                                  <asp:Parameter Name="ID" Type="Int32" />
                                              </DeleteParameters>
                                              <UpdateParameters>
                                                  <asp:Parameter Name="Firstname" Type="String" />
                                                  <asp:Parameter Name="LastName" Type="String" />
                                                  <asp:Parameter Name="MobNo" Type="String" />
                                                  <asp:Parameter Name="EmailID" Type="String" />
                                                  <asp:Parameter Name="Pass" Type="String" />
                                                  <asp:Parameter Name="ID" Type="Int32" />
                                              </UpdateParameters>
                                             
                                          </asp:SqlDataSource>
                                      </td>
                                  </tr>
</table>



</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">
    <style type="text/css">
 
    .style13
    {
        height: 251px;
    }
        </style>



</asp:Content>

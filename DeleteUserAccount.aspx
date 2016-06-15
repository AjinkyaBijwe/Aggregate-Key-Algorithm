<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="DeleteUserAccount.aspx.cs" Inherits="DeleteUserAccount" %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="border: 1px solid #FFFFFF; width: 72%; height: 205px;" align="center">
                                  <tr>
                                      <td 
                              
                                          style="border-style: none none solid none; height: 41px; text-align: center; border-bottom-color: #FFFFFF;">
                                          <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Delete Account" 
                                              Font-Size="XX-Large"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="center" class="auto-style4">
                                          <asp:GridView ID="GridView1" runat="server" 
                                  AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                  DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="194px" Width="963px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" EnableModelValidation="True" HorizontalAlign="Center">
                                              <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Center" />
                                              <Columns>
                                                  <asp:CommandField ShowDeleteButton="True" />
                                                  <asp:BoundField DataField="ID" HeaderText="ID" 
                                          SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                                  <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                                          SortExpression="Firstname" />
                                                  <asp:BoundField DataField="LastName" HeaderText="LastName" 
                                          SortExpression="LastName" />
                                                  <asp:BoundField DataField="MobNo" HeaderText="MobNo" 
                                          SortExpression="MobNo" />
                                                  <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                                                      SortExpression="EmailID" />
                                              </Columns>
                                              <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                              <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                              <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                          </asp:GridView>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style3">
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
                                              <InsertParameters>
                                                  <asp:Parameter Name="Firstname" Type="String" />
                                                  <asp:Parameter Name="LastName" Type="String" />
                                                  <asp:Parameter Name="MobNo" Type="String" />
                                                  <asp:Parameter Name="EmailID" Type="String" />
                                                  <asp:Parameter Name="Pass" Type="String" />
                                              </InsertParameters>
                                          </asp:SqlDataSource>
                                      </td>
                                  </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">
    <style type="text/css">
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            height: 39px;
        }
    </style>
</asp:Content>


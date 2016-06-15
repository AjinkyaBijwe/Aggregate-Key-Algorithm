<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AddAdminData.master"  CodeFile="ModifyAdvertisment.aspx.cs" Inherits="ModifyAdvertisment" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                  <table style="border: 1px solid #FFFFFF; width: 100%; height: 205px;">
                      <tr>
                          <td 
                              
                              style="border-style: none none solid none; height: 41px; text-align: center; border-bottom-color: #FFFFFF;">
                              <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Advertisment" 
                                  Font-Size="X-Large"></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td style="height: 39px">
                              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                  AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                  DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                  GridLines="None" Height="202px" Width="1113px" 
                                  onselectedindexchanged="GridView1_SelectedIndexChanged">
                                  <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                  <Columns>
                                      <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                                      <asp:BoundField DataField="DealerName" HeaderText="Dealer Name" 
                                          SortExpression="DealerName" />
                                      <asp:BoundField DataField="ProductCompany" HeaderText="Product Name" 
                                          SortExpression="ProductCompany" />
                                      <asp:BoundField DataField="Address" HeaderText="Address" 
                                          SortExpression="Address" />
                                      <asp:BoundField DataField="Description" HeaderText="Description" 
                                          SortExpression="Description" />
                                      <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                                  </Columns>
                                  <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <AlternatingRowStyle BackColor="White" />
                              </asp:GridView>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                  DeleteCommand="DELETE FROM [Advertisment] WHERE [ID] = @ID" 
                                  InsertCommand="INSERT INTO [Advertisment] ([DealerName], [ProductCompany], [Address], [Description], [type]) VALUES (@DealerName, @ProductCompany, @Address, @Description, @type)" 
                                  SelectCommand="SELECT [ID], [DealerName], [ProductCompany], [Address], [Description], [type] FROM [Advertisment] ORDER BY [ID] DESC" 
                                  
                                  
                                  UpdateCommand="UPDATE [Advertisment] SET [DealerName] = @DealerName, [ProductCompany] = @ProductCompany, [Address] = @Address, [Description] = @Description, [type] = @type WHERE [ID] = @ID">
                                  <DeleteParameters>
                                      <asp:Parameter Name="ID" Type="Int64" />
                                  </DeleteParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="DealerName" Type="String" />
                                      <asp:Parameter Name="ProductCompany" Type="String" />
                                      <asp:Parameter Name="Address" Type="String" />
                                      <asp:Parameter Name="Description" Type="String" />
                                      <asp:Parameter Name="type" Type="String" />
                                      <asp:Parameter Name="ID" Type="Int64" />
                                  </UpdateParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="DealerName" Type="String" />
                                      <asp:Parameter Name="ProductCompany" Type="String" />
                                      <asp:Parameter Name="Address" Type="String" />
                                      <asp:Parameter Name="Description" Type="String" />
                                      <asp:Parameter Name="type" Type="String" />
                                  </InsertParameters>
                              </asp:SqlDataSource>
                          </td>
                      </tr>
    </table>

</asp:Content>

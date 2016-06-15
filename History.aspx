<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="History.aspx.cs" Inherits="History" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                              <table style="width: 100%; height: 407px;">
                                  <tr>
                                      <td valign="middle" align="center" class="auto-style3">
                                          <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="History"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td valign="top">
                                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                              CellPadding="4" DataSourceID="SqlDataSource1" 
                                              ForeColor="#333333" GridLines="None" Width="960px" Height="400px">
                                              <RowStyle BackColor="#EFF3FB" />
                                              <Columns>
                                                  <asp:BoundField DataField="ID" HeaderText="ID" 
                                                      SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                                  <asp:BoundField DataField="SendID" HeaderText="SendID" 
                                                      SortExpression="SendID" />
                                                  <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                                                  <asp:BoundField DataField="FStat" HeaderText="FStat" 
                                                      SortExpression="FStat" />
                                                  <asp:BoundField DataField="UpFile" HeaderText="UpFile" 
                                                      SortExpression="UpFile" />
                                              </Columns>
                                              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                              <EditRowStyle BackColor="#2461BF" />
                                              <AlternatingRowStyle BackColor="White" />
                                          </asp:GridView>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                              
                                              SelectCommand="SELECT * FROM [RequestedFile] WHERE (([UserID] = @UserID) AND ([FStat] = @FStat))">
                                              <SelectParameters>
                                                  <asp:SessionParameter Name="UserID" SessionField="UserNa" Type="String" />
                                                  <asp:Parameter DefaultValue="Confirmed" Name="FStat" Type="String" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                                      </td>
                                  </tr>
</table>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">
    <style type="text/css">
    .auto-style3 {
        height: 52px;
    }
</style>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="OwnerResponse.aspx.cs" Inherits="OwnerResponse" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="width: 100%; height: 291px;">
                                  <tr>
                                      <td class="auto-style3" align="center" valign="middle">
                                          <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Owner Response"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td valign="top" class="auto-style4">
                                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                              AutoGenerateColumns="False" CellPadding="3" 
                                              ForeColor="#333333" GridLines="None" 
                                              Height="401px" PageSize="5" 
                                              Width="960px" DataSourceID="SqlDataSource1" 
                                              onrowcommand="GridView1_RowCommand">
                                              <RowStyle BackColor="#EFF3FB" />
                                              <Columns>
                                                  <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                      ReadOnly="True" SortExpression="ID" />
                                                  <asp:BoundField DataField="SendID" HeaderText="User Name" 
                                                      SortExpression="UserID" />
                                                  <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                                                  <asp:BoundField DataField="UpFile" HeaderText="UpFile" 
                                                      SortExpression="UpFile" />
                                                  <asp:ButtonField CommandName="View" HeaderText="View File" Text="View File" />
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
                                      <td valign="middle" align="left">
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                              SelectCommand="SELECT * FROM [OwnerResponse] WHERE ([SendID] = @SendID)">
                                              <SelectParameters>
                                                  <asp:SessionParameter Name="SendID" SessionField="UserNa" Type="String" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                                      </td>
                                  </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <style type="text/css">


        .style44
        {
            height: 185px;
        }
        .style45
        {
            height: 49px;
        }
        .auto-style1 {
            height: 185px;
            text-align: center;
        }
        .auto-style2 {
            height: 49px;
            text-align: center;
        }
    .auto-style3 {
        height: 50px;
        text-align: center;
    }
    .auto-style4 {
        height: 223px;
        text-align: center;
        width: 181px;
    }
    </style>

</asp:Content>

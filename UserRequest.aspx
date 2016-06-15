<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="UserRequest.aspx.cs" Inherits="UserRequest" %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="width: 100%; height: 291px;">
                                  <tr>
                                      <td class="auto-style3">
                                          <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="User Request"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td valign="top" class="auto-style4">
                                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                              AutoGenerateColumns="False" CellPadding="4" 
                                              ForeColor="#333333" GridLines="None" 
                                              Height="191px" PageSize="5" 
                                              Width="944px" DataSourceID="SqlDataSource1" 
                                              onrowcommand="GridView1_RowCommand">
                                              <RowStyle BackColor="#EFF3FB" />
                                              <Columns>
                                                  <asp:TemplateField ShowHeader="False">
                                                      <HeaderTemplate>
                                                          <asp:CheckBox ID="chkAllSelect" runat="server" onclick="CheckAll(this);" />
                                                      </HeaderTemplate>
                                                      <ItemTemplate>
                                                          <asp:CheckBox ID="chkSelect" runat="server" />
                                                      </ItemTemplate>
                                                  </asp:TemplateField>
                                                  <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                      ReadOnly="True" SortExpression="ID" />
                                                  <asp:BoundField DataField="UserID" HeaderText="User Name" 
                                                      SortExpression="UserID" />
                                                  <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                                                  <asp:BoundField DataField="UpFile" HeaderText="UpFile" 
                                                      SortExpression="UpFile" />
                                                  <asp:BoundField DataField="SendID" HeaderText="Requested User Name" 
                                                      SortExpression="SendID" />
                                                  <asp:ButtonField CommandName="Response" HeaderText="Response" Text="Response" />
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
                                              
                                              SelectCommand="SELECT * FROM [RequestedFile] WHERE (([UserID] = @UserID) AND ([FStat] = @FStat))">
                                              <SelectParameters>
                                                  <asp:SessionParameter Name="UserID" SessionField="UserNa" Type="String" />
                                                  <asp:Parameter DefaultValue="Pending" Name="FStat" Type="String" />
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
            height: 41px;
        }
        .auto-style1 {
            height: 185px;
            text-align: center;
        }
        .auto-style2 {
            height: 41px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 51px;
        }
        .auto-style4 {
            height: 223px;
            text-align: center;
            width: 181px;
        }
    </style>

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AddAdminData.master"  CodeFile="ALLFiles.aspx.cs" Inherits="ALLFiles" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 1125px; height: 407px; margin-right: 0px;">
                                  <tr>
                                      <td valign="top" style="height: auto; width: 100%">
                                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                              CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                                              ForeColor="#333333" Width="1130px" 
                                              onrowcommand="GridView1_RowCommand" AllowPaging="True" EnableModelValidation="True" Height="102%" PageSize="15" style="margin-right: 0px">
                                              <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                              <AlternatingRowStyle BackColor="White" />
                                              <Columns>
                                                  <asp:BoundField DataField="ID" HeaderText="ID" 
                                                      SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                                  <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                                      SortExpression="UserID" />
                                                  <asp:BoundField DataField="FileName" HeaderText="FileName" 
                                                      SortExpression="FileName" />
                                                  <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                                                  <asp:BoundField DataField="UpFile1" HeaderText="Uploaded File" 
                                                      SortExpression="UpFile1" />
                                                  <asp:BoundField DataField="PubKey" HeaderText="PubKey" 
                                                      SortExpression="PubKey" />
                                                  <asp:BoundField DataField="MastKey" HeaderText="MastKey" 
                                                      SortExpression="MastKey" />
                                                  <asp:BoundField DataField="FStatus" HeaderText="Status" 
                                                      SortExpression="FStatus" />
                                                  <asp:ButtonField CommandName="View" HeaderText="VIEW" Text="View" />
                                              </Columns>
                                              <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" VerticalAlign="Middle" />
                                              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                          </asp:GridView>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                              SelectCommand="SELECT * FROM [FileUpload] WHERE ([FStatus] = @FStatus)">
                                              <SelectParameters>
                                                  <asp:Parameter DefaultValue="Not_Verified" Name="FStatus" Type="String" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                                      </td>
                                  </tr>
                                  </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

</asp:Content>

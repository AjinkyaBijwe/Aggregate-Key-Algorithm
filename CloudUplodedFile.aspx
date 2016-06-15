<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AddAdminData.master"  CodeFile="CloudUplodedFile.aspx.cs" Inherits="CloudUplodedFile" %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                              <table style="width: 1127px; height: 392px;">
                                  <tr>
                                      <td valign="top" class="auto-style1" width="45">
                                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                              CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="1130px" EnableViewState="False" 
                                              Font-Size="12pt" onselectedindexchanged="GridView1_SelectedIndexChanged" EnableModelValidation="True" Height="100%" AllowPaging="True" PageSize="15" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                                              <RowStyle BackColor="White" Wrap="True" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                                              <Columns>
                                                  <asp:BoundField DataField="ID" HeaderText="ID" 
                                                      SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                                  <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                                      SortExpression="UserID" />
                                                  <asp:BoundField DataField="UpFile1" HeaderText="UpFile1" 
                                                      SortExpression="UpFile1" />
                                                  <asp:BoundField DataField="PubKey" HeaderText="PubKey" 
                                                      SortExpression="PubKey" />
                                                  <asp:BoundField DataField="MastKey" HeaderText="MastKey" 
                                                      SortExpression="MastKey" />
                                                  <asp:TemplateField HeaderText="FileData" SortExpression="FileData" Visible="False">
                                                      <EditItemTemplate>
                                                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileData") %>'></asp:TextBox>
                                                      </EditItemTemplate>
                                                      <ItemTemplate>
                                                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("FileData") %>'></asp:Label>
                                                      </ItemTemplate>
                                                      <ControlStyle Width="45px" />
                                                      <FooterStyle Width="45px" />
                                                      <HeaderStyle Width="45px" />
                                                      <ItemStyle Width="45px" Wrap="True" />
                                                  </asp:TemplateField>
                                                  <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                                                  <asp:BoundField DataField="FStatus" HeaderText="FStatus" 
                                                      SortExpression="FStatus" />
                                              </Columns>
                                              <EmptyDataRowStyle Wrap="True" />
                                              <FooterStyle BackColor="White" ForeColor="#333333" Wrap="True" />
                                              <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" Wrap="True" />
                                              <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" Wrap="True" />
                                              <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" Wrap="True" />
                                              <EditRowStyle Wrap="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                              <AlternatingRowStyle Wrap="True" />
                                          </asp:GridView>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style1">
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                              SelectCommand="Select * from [FileUpload] where Fstatus = 'Verified';"></asp:SqlDataSource>
                                      </td>
                                  </tr>
</table>

  
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 1016px;
        }
    </style>
</asp:Content>


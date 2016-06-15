<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"   CodeFile="DownloadFileList.aspx.cs" Inherits="DownloadFileList" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="width: 100%; height: 291px;">
                                  <tr>
                                      <td align="center">
                                          &nbsp;
                                          <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Request Files"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td valign="top" class="auto-style3">
                                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                              AutoGenerateColumns="False" CellPadding="4" 
                                              ForeColor="#333333" GridLines="None" 
                                              Height="320px" PageSize="5" 
                                              Width="943px" DataSourceID="SqlDataSource1" 
                                              onrowcommand="GridView1_RowCommand" DataKeyNames="ID" EnableModelValidation="True">
                                              <RowStyle BackColor="#EFF3FB" />
                                              <Columns>
                                                  <asp:BoundField DataField="SendID" HeaderText="User Name" 
                                                      SortExpression="SendID" />
                                                  <asp:BoundField DataField="ID" HeaderText="File ID" 
                                                      SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                                  <asp:BoundField DataField="FileName" HeaderText="FileName" 
                                                      SortExpression="FileName" />
                                                  <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                                                  <asp:BoundField DataField="UpFile1" HeaderText="UpFile1" 
                                                      SortExpression="UpFile1" />
                                                  <asp:ButtonField CommandName="Download" HeaderText="File Download" 
                                                      Text="Download" />
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
                                              
                                              
                                              SelectCommand="SELECT OwnerResponse.SendID, OwnerResponse.Category, OwnerResponse.KVCKey, FileUpload.FileName, FileUpload.ID, FileUpload.UpFile1 FROM OwnerResponse INNER JOIN FileUpload ON OwnerResponse.UpFile = FileUpload.UpFile1 AND OwnerResponse.UserID = FileUpload.UserID WHERE (OwnerResponse.OStat = 'Pending') AND (FileUpload.FStatus = 'Not_Verified') AND (OwnerResponse.SendID = @UID)">
                                              <SelectParameters>
                                                  <asp:SessionParameter Name="UID" SessionField="UserNa" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                                      </td>
                                  </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <style type="text/css">



        .style39
        {
            height: 40px;
        }
        .style44
        {
            height: 185px;
        }
        .auto-style3 {
            height: 334px;
        }
    </style>

</asp:Content>

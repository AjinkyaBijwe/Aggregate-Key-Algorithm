<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="VerifiedData.aspx.cs" Inherits="VerifiedData" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%; ">
    <tr>
        <td valign="middle" align="center" class="auto-style4">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Verified Files"></asp:Label>
        </td>
    </tr>
    <tr>
        <td valign="top" class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                              CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                                              ForeColor="#333333" GridLines="None" 
                Width="963px" Height="200px">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" 
                                                      SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                                      SortExpression="UserID" />
                    <asp:BoundField DataField="FileName" HeaderText="FileName" 
                                                      SortExpression="FileName" />
                    <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                    <asp:BoundField DataField="UpFile1" HeaderText="UpFile" 
                                                      SortExpression="UpFile1" />
                    <asp:BoundField DataField="PubKey" HeaderText="PubKey" 
                                                      SortExpression="PubKey" />
                    <asp:BoundField DataField="MastKey" HeaderText="MastKey" 
                                                      SortExpression="MastKey" />
                    <asp:BoundField DataField="FStatus" HeaderText="FStatus" 
                                                      SortExpression="FStatus" />
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
                                              
                SelectCommand="SELECT * FROM [FileUpload] WHERE (([UserID] = @UserID) AND ([FStatus] = @FStatus))">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UserNa" Type="String" />
                    <asp:Parameter DefaultValue="Verified" Name="FStatus" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">
    <style type="text/css">
        .auto-style3 {
            height: 205px;
        }
        .auto-style4 {
            height: 51px;
        }
    </style>
</asp:Content>


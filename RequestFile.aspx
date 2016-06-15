<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="RequestFile.aspx.cs" Inherits="RequestFile" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="width: 100%; height: 391px; font-size: large;" align="left">
                                  <tr>
                                      <td class="auto-style12" align="center">
                                          &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
                                              Text="Request Files"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td valign="top" class="style43">
                                          <table style="width: 100%; height: 124px;">
                                              <tr>
                                                  <td class="auto-style8" style="font-size: large">
                                                      <asp:Label ID="lblMessage1" runat="server" Font-Size="Large" ForeColor="Black">User 
                                                      Name :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style9" style="font-weight: bold; font-size: large">
                                                      <asp:DropDownList ID="ddlUserName" runat="server" AutoPostBack="True" 
                                                          Height="30px" onselectedindexchanged="ddlUserName_SelectedIndexChanged" 
                                                          Width="300px" Font-Size="Large">
                                                      </asp:DropDownList>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style13" style="font-size: large">
                                                      <asp:Label ID="lblMessage2" runat="server" Font-Size="Large" ForeColor="Black">Category 
                                                      :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style14" style="font-weight: bold; font-size: large">
                                                      <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" 
                                                          Height="30px" onselectedindexchanged="ddlCategory_SelectedIndexChanged" 
                                                          Width="300px" Font-Size="Large">
                                                      </asp:DropDownList>
                                                  </td>
                                              </tr>
                                              </table>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td valign="top" class="auto-style11">
                                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                              AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                                              ForeColor="#333333" GridLines="None" 
                                              Height="171px" PageSize="5" 
                                              Width="949px">
                                              <RowStyle BackColor="#EFF3FB" />
                                              <Columns>
                                                  <asp:TemplateField>   
                        <HeaderTemplate>    
                            <asp:CheckBox ID="chkAllSelect" runat="server" onclick="CheckAll(this);" />   
                       </HeaderTemplate>   
                        <ItemTemplate>   
                           <asp:CheckBox ID="chkSelect" runat="server" />   
                        </ItemTemplate>   
                   </asp:TemplateField>   

                                                  <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                      ReadOnly="True" SortExpression="ID" />
                                                  <asp:BoundField DataField="FileName" HeaderText="FileName" 
                                                      SortExpression="FileName" />
                                                  <asp:BoundField DataField="Category" HeaderText="Category" 
                                                      SortExpression="Category" />
                                                  <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                                      SortExpression="UserID" />
                                                  <asp:BoundField DataField="UpFile1" HeaderText="UpFile" 
                                                      SortExpression="UpFile1" />
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
                                      <td valign="middle">
                                                      <strong>
                                                      <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                                                          Text="Request Send" Width="214px" BackColor="Aqua" CssClass="auto-style3" Height="62px" Font-Size="Large" />
                                                      </strong>&nbsp;&nbsp;
                                      </td>
                                  </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <style type="text/css">

        .style13
        {
            height: 36px;
        }
        .style16
        {
            height: 36px;
            width: 166px;
        }
        .style20
        {
            height: 36px;
            width: 339px;
        }
        .style25
    {
        height: 23px;
        width: 166px;
    }
    .style26
    {
        height: 23px;
        width: 339px;
    }
    .style27
    {
        height: 23px;
    }
    .style28
    {
        height: 29px;
        width: 166px;
    }
    .style29
    {
        height: 29px;
        width: 339px;
    }
        .style38
        {
            height: 29px;
        }
        .style43
        {
            height: 123px;
        }
        .style44
        {
            height: 185px;
        }
        .style45
        {
            height: 45px;
        }
    .auto-style1 {
        height: 45px;
        text-align: center;
    }
        .auto-style2 {
            height: 185px;
            text-align: center;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style8 {
            width: 166px;
        }
        .auto-style9 {
        }
        .auto-style11 {
            height: 222px;
            text-align: center;
        }
        .auto-style12 {
            height: 51px;
            text-align: center;
        }
        .auto-style13 {
            width: 166px;
            height: 61px;
        }
        .auto-style14 {
            height: 61px;
        }
    </style>

</asp:Content>

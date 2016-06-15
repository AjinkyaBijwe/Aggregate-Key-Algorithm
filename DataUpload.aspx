<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataUpload.aspx.cs" MasterPageFile ="~/UserAccount.master" Inherits="PrivateDataUpload" %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="width: 100%; height: 423px;">
                                  <tr>
                                      <td class="auto-style28" align="center" valign="middle">
                                          <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Upload File"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style3">
                                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                              AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                                              DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                                              Height="280px" onrowcommand="GridView1_RowCommand" PageSize="6" 
                                              Width="956px" onpageindexchanged="GridView1_PageIndexChanged">
                                              <RowStyle BackColor="#EFF3FB" />
                                              <Columns>
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
                                                  <asp:BoundField DataField="PubKey" HeaderText="PubKey" 
                                                      SortExpression="PubKey" />
                                                  <asp:BoundField DataField="MastKey" HeaderText="MastKey" 
                                                      SortExpression="MastKey" />
                                              </Columns>
                                              <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                              <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                              <EditRowStyle BackColor="#2461BF" />
                                              <AlternatingRowStyle BackColor="White" />
                                          </asp:GridView>
                                          <table style="width: 955px; height: 303px;">
                                              <tr>
                                                  <td class="auto-style35" align="left">
                                                      <asp:Label ID="lblMessage1" runat="server" Font-Size="X-Large" ForeColor="Black" Font-Bold="True">File 
                                                      Name :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style36">
                                                      <asp:TextBox ID="txtFileName" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                          Height="30px" style="font-size: medium" Width="300px" Font-Size="Large"></asp:TextBox>
                                                  </td>
                                                  <td align="left" class="auto-style37">
                                                      </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style32" align="left">
                                                      <asp:Label ID="lblMessage2" runat="server" Font-Size="X-Large" ForeColor="Black" Font-Bold="True">Category 
                                                      :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style33">
                                                      <asp:TextBox ID="txtCategory" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                          Height="30px" style="font-size: medium" Width="300px" Font-Size="Large"></asp:TextBox>
                                                  </td>
                                                  <td align="left" class="auto-style34">
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style4" align="left">
                                                      <asp:Label ID="lblMessage4" runat="server" Font-Size="X-Large" ForeColor="Black" Font-Bold="True">Public 
                                                      Key :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style13">
                                                      <asp:TextBox ID="txtPublicKey" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                          Height="30px" style="font-size: medium" Width="300px" Font-Size="Large"></asp:TextBox>
                                                  </td>
                                                  <td align="left" class="style30" rowspan="3">
                                                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                          ConnectionString="<%$ ConnectionStrings:Admin %>" 
                                                          SelectCommand="SELECT * FROM [FileUpload] WHERE ([UserID] = @UserID)" 
                                                          DeleteCommand="DELETE FROM [FileUpload] WHERE [ID] = @ID" 
                                                          InsertCommand="INSERT INTO [FileUpload] ([FileName], [Category], [UserID], [UpFile1], [PubKey], [MastKey], [FStatus], [FileData]) VALUES (@FileName, @Category, @UserID, @UpFile1, @PubKey, @MastKey, @FStatus, @FileData)" 
                                                          
                                                          
                                                          
                                                          
                                                          UpdateCommand="UPDATE [FileUpload] SET [FileName] = @FileName, [Category] = @Category, [UserID] = @UserID, [UpFile1] = @UpFile1, [PubKey] = @PubKey, [MastKey] = @MastKey, [FStatus] = @FStatus, [FileData] = @FileData WHERE [ID] = @ID">
                                                          <SelectParameters>
                                                              <asp:SessionParameter Name="UserID" SessionField="UserNa" Type="String" />
                                                          </SelectParameters>
                                                          <DeleteParameters>
                                                              <asp:Parameter Name="ID" Type="Int32" />
                                                          </DeleteParameters>
                                                          <UpdateParameters>
                                                              <asp:Parameter Name="FileName" Type="String" />
                                                              <asp:Parameter Name="Category" Type="String" />
                                                              <asp:Parameter Name="UserID" Type="String" />
                                                              <asp:Parameter Name="UpFile1" Type="String" />
                                                              <asp:Parameter Name="PubKey" Type="String" />
                                                              <asp:Parameter Name="MastKey" Type="String" />
                                                              <asp:Parameter Name="FStatus" Type="String" />
                                                              <asp:Parameter Name="FileData" Type="String" />
                                                              <asp:Parameter Name="ID" Type="Int32" />
                                                          </UpdateParameters>
                                                          <InsertParameters>
                                                              <asp:Parameter Name="FileName" Type="String" />
                                                              <asp:Parameter Name="Category" Type="String" />
                                                              <asp:Parameter Name="UserID" Type="String" />
                                                              <asp:Parameter Name="UpFile1" Type="String" />
                                                              <asp:Parameter Name="PubKey" Type="String" />
                                                              <asp:Parameter Name="MastKey" Type="String" />
                                                              <asp:Parameter Name="FStatus" Type="String" />
                                                              <asp:Parameter Name="FileData" Type="String" />
                                                          </InsertParameters>
                                                      </asp:SqlDataSource>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style4" align="left">
                                                      <asp:Label ID="lblMessage5" runat="server" Font-Size="X-Large" ForeColor="Black" Font-Bold="True">Master 
                                                      Key :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style13">
                                                      <asp:TextBox ID="txtMasterKey" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                          Height="30px" style="font-size: medium" Width="300px" Font-Size="Large"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style8" align="left">
                                                      <asp:Label ID="lblMessage3" runat="server" Font-Size="X-Large" ForeColor="Black" Font-Bold="True">Document 
                                                      : </asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style17">
                                                      <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Font-Bold="True" Width="300px" Font-Size="Large" />
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style12" align="left">
                                                      </td>
                                                  <td align="left" class="auto-style21">
                                                      <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                                                          Text="Upload Document" Width="377px" BackColor="#99FF66" Height="46px" Font-Size="Large" />
                                                  </td>
                                                  <td align="left" class="style33">
                                                      <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                                                  </td>
                                              </tr>
                                              </table>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td valign="top" class="auto-style24">
                                          <table style="width: 100%; height: 86px;">
                                              <tr>
                                                  <td class="auto-style27">
                                                      <asp:Label ID="Label2" runat="server" Text="Start Time "></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style27">
                                                      <asp:Label ID="lblStartMili" runat="server" ForeColor="#990000"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili0" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style26">
                                                      <asp:Label ID="Label3" runat="server" Text="End Time"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style27">
                                                      <asp:Label ID="lblEndMili" runat="server" ForeColor="#990000"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili1" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style27">
                                                      <asp:Label ID="Label4" runat="server" Text="Time Taken"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style27">
                                                      <asp:Label ID="lblMiliSec" runat="server" ForeColor="#990000"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili2" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td style="color: #99CCFF">
                                                      <asp:Label ID="Label5" runat="server" Text="Start Time "></asp:Label>
                                                  </td>
                                                  <td align="left" style="color: #99CCFF">
                                                      <asp:Label ID="lblStartSec" runat="server" ForeColor="#99CCFF"></asp:Label>
                                                      &nbsp;<asp:Label ID="lblStartMili3" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                                  <td class="style51" style="color: #99CCFF">
                                                      <asp:Label ID="Label7" runat="server" Text="End Time"></asp:Label>
                                                  </td>
                                                  <td align="left" style="color: #99CCFF">
                                                      <asp:Label ID="lblEndSec" runat="server" ForeColor="#99CCFF"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili4" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                                  <td style="color: #99CCFF">
                                                      <asp:Label ID="Label9" runat="server" Text="Time Taken"></asp:Label>
                                                  </td>
                                                  <td align="left" style="color: #99CCFF">
                                                      <asp:Label ID="lblSec" runat="server" ForeColor="#99CCFF"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili5" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td style="color: #99CCFF" class="auto-style22">
                                                      <asp:Label ID="Label6" runat="server" Text="Start Time "></asp:Label>
                                                  </td>
                                                  <td align="left" style="color: #99CCFF" class="auto-style22">
                                                      <asp:Label ID="lblStartMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili6" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                                  <td class="auto-style23" style="color: #99CCFF">
                                                      <asp:Label ID="Label8" runat="server" Text="End Time"></asp:Label>
                                                  </td>
                                                  <td align="left" style="color: #99CCFF" class="auto-style22">
                                                      <asp:Label ID="lblEndMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili9" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                                  <td style="color: #99CCFF" class="auto-style22">
                                                      <asp:Label ID="Label10" runat="server" Text="Time Taken"></asp:Label>
                                                  </td>
                                                  <td align="left" style="color: #99CCFF" class="auto-style22">
                                                      <asp:Label ID="lblMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili10" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                              </tr>
                                          </table>
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
    .style30
    {
        height: 40px;
    }
        .style31
        {
            height: 15px;
            width: 166px;
        }
        .style32
        {
            height: 15px;
            width: 339px;
        }
        .style33
        {
            height: 15px;
        }
        .style34
        {
            height: 22px;
            width: 166px;
        }
        .style35
        {
            height: 22px;
            width: 339px;
        }
        .style40
        {
            width: 166px;
        }
        .style41
        {
            width: 339px;
        }
        .style42
        {
            height: 37px;
            width: 166px;
        }
        .style43
        {
            height: 37px;
            width: 339px;
        }
        .style44
        {
            height: 35px;
            width: 166px;
        }
        .style45
        {
            height: 35px;
            width: 339px;
        }
        .style46
        {
            height: 38px;
            width: 166px;
        }
        .style47
        {
            height: 38px;
            width: 339px;
        }
        .style48
        {
            height: 30px;
            width: 166px;
        }
        .style49
        {
            height: 30px;
            width: 339px;
        }
        .style50
        {
            height: 38px;
        }
        .style51
        {
            width: 100px;
        }
        .auto-style1 {
            height: 36px;
            text-align: center;
        }
        .auto-style3 {
            height: 548px;
            text-align: center;
            width: 181px;
        }
        .auto-style4 {
            height: 36px;
            width: 223px;
        }
        .auto-style8 {
            height: 30px;
            width: 223px;
        }
        .auto-style12 {
            height: 15px;
            width: 223px;
        }
        .auto-style13 {
            height: 36px;
            width: 470px;
        }
        .auto-style17 {
            height: 30px;
            width: 470px;
        }
        .auto-style21 {
            height: 15px;
            width: 470px;
        }
        .auto-style22 {
            height: 27px;
        }
        .auto-style23 {
            width: 100px;
            height: 27px;
        }
        .auto-style24 {
            height: 90px;
        }
        .auto-style26 {
            width: 100px;
            height: 54px;
        }
        .auto-style27 {
            height: 54px;
        }
        .auto-style28 {
            height: 51px;
            width: 223px;
        }
        .auto-style32 {
            height: 26px;
            width: 223px;
        }
        .auto-style33 {
            height: 26px;
            width: 470px;
        }
        .auto-style34 {
            height: 26px;
        }
        .auto-style35 {
            height: 31px;
            width: 223px;
        }
        .auto-style36 {
            height: 31px;
            width: 470px;
        }
        .auto-style37 {
            height: 31px;
        }
    </style>

</asp:Content>

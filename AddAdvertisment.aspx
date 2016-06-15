<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAdvertisment.aspx.cs" MasterPageFile="~/AddAdminData.master"   Inherits="AddAdvertisment" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

    <table style="width: 100%; height: 573px; background-color: #99CCFF;">
    <tr>
        <td class="style21" align="center" colspan="3">
            <asp:Label ID="Label1" runat="server" ForeColor="Black" 
                    style="font-size: x-large;  font-family: 'Courier New', Courier, monospace; font-weight: 700" 
                    Text="Advertisment "></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style33" align="center" colspan="3" valign="top">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" Height="192px" Width="905px">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="DealerName" HeaderText="Product" 
                        SortExpression="DealerName" />
                    <asp:BoundField DataField="ProductCompany" HeaderText="Company" 
                        SortExpression="ProductCompany" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Description" HeaderText="Description" 
                        SortExpression="Description" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
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
        <td align="right" class="style24">
            <asp:Label ID="Label15" runat="server" ForeColor="Black" 
                    style="font-size: large; " Text="Type :"></asp:Label>
        </td>
        <td align="left" class="style25">
            <asp:DropDownList ID="ddlType" runat="server" Width="243px">
                <asp:ListItem>FREE</asp:ListItem>
                <asp:ListItem>BANNER</asp:ListItem>
                <asp:ListItem>SIDE BAR</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td rowspan="6">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" 
                    Height="182px">
      
                <ItemTemplate>
                    <asp:Image ID="Image4" runat="server" Height="169px" ImageUrl="~/Handler2.ashx" 
                            Width="187px" />
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </td>
    </tr>
    <tr>
        <td align="right" class="style22">
            <asp:Label ID="Label10" runat="server" ForeColor="Black" 
                    style="font-size: large; " Text="Dealer Name :"></asp:Label>
        </td>
        <td style="width: 319px; height: 33px" align="left">
            <asp:TextBox ID="txtDealerName" runat="server" Height="21px" 
                    Width="245px" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtDealerName">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style22">
            <asp:Label ID="Label14" runat="server" ForeColor="Black" 
                    style="font-size: large; " Text="Product Company :"></asp:Label>
        </td>
        <td style="width: 319px; height: 33px" align="left">
            <asp:TextBox ID="txtProductCompany" runat="server"  Height="21px" 
                    Width="245px" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtProductCompany">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003399; " align="right" class="style22">
            <asp:Label ID="Label11" runat="server" ForeColor="Black" 
                    style="font-size: large; " Text="Address :"></asp:Label>
        </td>
        <td style="width: 319px; height: 37px" align="left">
            <asp:TextBox ID="txtAddress" runat="server"  Height="21px" 
                    Width="247px" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003399; " align="right" class="style22">
            <asp:Label ID="Label13" runat="server" ForeColor="Black" 
                    style="font-size: large; " Text="Description :"></asp:Label>
        </td>
        <td style="height: 39px; width: 319px" align="left">
            <asp:TextBox ID="txtDescription" runat="server"  Height="21px" Width="249px" 
                CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtDescription">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style26" align="right">
            <asp:Label ID="Label12" runat="server" ForeColor="Black" 
                    style="font-size: large; " Text="Upload Photo :"></asp:Label>
        </td>
        <td align="left" class="style27">
            <asp:FileUpload ID="ProductPhoto" runat="server" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="1px" Width="213px" />
        </td>
    </tr>
    <tr>
        <td class="style24">
        </td>
        <td class="style25">
            <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" 
                    BorderWidth="1px" Height="25px" onclick="Button1_Click" 
                    style="font-weight: 700; font-size: large" Text="Save" Width="165px" />
        </td>
        <td class="style30">
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetPhotoAdver" TypeName="PhotoManager">
                <SelectParameters>
                    <asp:SessionParameter Name="photoid" SessionField="AdvID" Type="Double" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td style="width: 319px">
            &nbsp;</td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Admin %>" 
                DeleteCommand="DELETE FROM [Advertisment] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [Advertisment] ([DealerName], [ProductCompany], [Address], [Description], [type]) VALUES (@DealerName, @ProductCompany, @Address, @Description, @type)" 
                SelectCommand="SELECT [ID], [DealerName], [ProductCompany], [Address], [Description], [type] FROM [Advertisment]" 
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
<asp:Content ID="Cont"  ContentPlaceHolderID="head" runat="server"  >

    <style type="text/css">

           
      input.textbox, textarea
       {
       
         float:left;
       
         border: 1px solid #FFC469; 
         height: 16px; 
         width: 230px;
     
       } 
 
         input.textbox:hover, input.textbox:focus 
        { 
        width:260px;    
        padding:3px 32px 3px 3px; 
        } 

   




   
    .style22
    {
        }

   




   
        .style24
        {
            width: 209px;
            height: 25px;
        }
        .style25
        {
            width: 319px;
            height: 25px;
        }
        .style26
        {
            width: 209px;
            height: 37px;
        }
        .style27
        {
            width: 319px;
            height: 37px;
        }
        .style30
        {
            height: 25px;
        }
        .style33
        {
            height: 218px;
        }

   




   
    </style>
    
  <script type="text/javascript"  language="Javascript">
       <!--
       function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : event.keyCode;
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
       //-->
    </script>
    
</asp:Content> 


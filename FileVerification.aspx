<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AddAdminData.master"  CodeFile="FileVerification.aspx.cs" Inherits="FileVerification" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 100%; width: 1119px; height: 481px; margin-left: 6px;">
                                  <tr>
                                      <td class="style61" align="center">
                                          <table style="width: 100%; height: 470px;">
                                              <tr>
                                                  <td class="auto-style28" bgcolor="#99FFCC" align="center">
                                                      <asp:Label ID="lblMessage1" runat="server" Font-Size="Large" ForeColor="Black">User 
                                                      Name :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style29" colspan="3" bgcolor="#99FF66">
                                                      <asp:Label ID="lblUserName" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style30" bgcolor="#99FFCC" align="center">
                                                      <asp:Label ID="lblMessage2" runat="server" Font-Size="Large" ForeColor="Black">Category 
                                                      :</asp:Label>
                                                  </td>
                                                  <td align="left" colspan="3" bgcolor="#99FF66" class="auto-style31">
                                                      <asp:Label ID="lblCategory" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style19" bgcolor="#99FFCC" align="center">
                                                      <asp:Label ID="lblMessage6" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Size:</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style32" colspan="3" bgcolor="#99FF66">
                                                      <asp:Label ID="lblSize" runat="server" Font-Size="Large" ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style4" valign="top" bgcolor="#99FFCC" align="center">
                                                      <asp:Label ID="lblMessage7" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Block:</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style21" colspan="3" bgcolor="Yellow">
                                                      <asp:TextBox ID="txtContent" runat="server" Height="101px" TextMode="MultiLine" 
                                                          Width="754px" BackColor="#FFFF99"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style22" bgcolor="#99FFCC" align="center">
                                                      <asp:Label ID="lblMessage4" runat="server" Font-Size="Large" ForeColor="Black">Public 
                                                      Key :</asp:Label>
                                                  </td>
                                                  <td align="left" class="style29" bgcolor="#99FF66">
                                                      <asp:Label ID="lblPublicKey" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style35" bgcolor="#99FF66">
                                                      <asp:Label ID="lblMessage8" runat="server" Font-Size="Large" ForeColor="Black">Public 
                                                      Key :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style37" bgcolor="#99FF66">
                                                      <asp:TextBox ID="txtPublicKey" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                          Height="23px" style="font-size: medium" Width="221px"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style23" bgcolor="#99FFCC" align="center">
                                                      <asp:Label ID="lblMessage5" runat="server" Font-Size="Large" ForeColor="Black">Master 
                                                      Key :</asp:Label>
                                                  </td>
                                                  <td align="left" class="style35" bgcolor="#99FF66">
                                                      <asp:Label ID="lblMasterKey" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style35" bgcolor="#99FF66">
                                                      <asp:Label ID="lblMessage9" runat="server" Font-Size="Large" ForeColor="Black">Master 
                                                      Key :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style37" bgcolor="#99FF66">
                                                      <asp:TextBox ID="txtMasterKey" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                                                          Height="23px" style="font-size: medium" Width="220px"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style24" bgcolor="#99FFCC" align="center">
                                                      </td>
                                                  <td align="left" class="auto-style25" bgcolor="#CCFF33">
                                                      <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style36" bgcolor="#CCFF33" colspan="2">
                                                      <asp:Button ID="btnDecrypt" runat="server" onclick="btnDecrypt_Click" 
                                                          Text="Decrypt" Width="419px" style="margin-bottom: 0px;" BackColor="#0066FF" 
                                                          BorderStyle="Solid" BorderWidth="1px" Height="27px" />
                                                  </td>
                                              </tr>
                                              </table>
                                      </td>
                                  </tr>
                                  </table>




</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">

        .style16
        {
            height: 36px;
            width: 111px;
        }
        .style28
    {
        height: 29px;
        width: 111px;
    }
    .style29
    {
            height: 29px;
            width: 216px;
        }
    .style30
    {
        height: 40px;
    }
        .style34
        {
            height: 22px;
            width: 111px;
        }
        .style35
        {
            height: 22px;
            width: 216px;
        }
        .style39
        {
            height: 92px;
            width: 111px;
        }
        .style40
        {
            height: 92px;
        }
        .style44
        {
            height: 30px;
            width: 111px;
        }
        .style50
        {
            height: 40px;
            width: 152px;
        }
        .style52
        {
            height: 36px;
        }
        .style53
        {
            height: 30px;
        }
        .style55
        {
            height: 42px;
            width: 216px;
        }
        .style56
        {
            height: 35px;
            width: 111px;
        }
        .style57
        {
            height: 35px;
        }
        .style58
        {
            height: 42px;
            width: 152px;
        }
        .style59
        {
            height: 42px;
            width: 111px;
        }
        .style60
        {
            height: 42px;
        }
        .style61
        {
            height: 258px;
        }
        .style51
        {
            width: 100px;
        }
        .auto-style2 {
            height: 30px;
            width: 154px;
        }
        .auto-style3 {
            height: 35px;
            width: 154px;
        }
        .auto-style4 {
            height: 126px;
            width: 155px;
        }
        .auto-style19 {
            height: 58px;
            width: 155px;
        }
        .auto-style21 {
            height: 126px;
        }
        .auto-style22 {
            height: 29px;
            width: 155px;
        }
        .auto-style23 {
            height: 22px;
            width: 155px;
        }
        .auto-style24 {
            height: 67px;
            width: 155px;
        }
    .auto-style25 {
        height: 67px;
        width: 216px;
    }
    .auto-style28 {
        height: 63px;
        width: 155px;
    }
    .auto-style29 {
        height: 63px;
    }
    .auto-style30 {
        height: 53px;
        width: 155px;
    }
    .auto-style31 {
        height: 53px;
    }
    .auto-style32 {
        height: 58px;
    }
    .auto-style35 {
        height: 40px;
        width: 181px;
    }
    .auto-style36 {
        height: 67px;
        }
        .auto-style37 {
            height: 40px;
            width: 488px;
        }
    </style>

</asp:Content>


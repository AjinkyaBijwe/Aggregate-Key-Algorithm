<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AddAdminData.master"  CodeFile="KeyFile.aspx.cs" Inherits="KeyFile" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                              <table style="width: 100%; width: 1123px; height: 410px; margin-left: 4px;">
                                  <tr>
                                      <td class="auto-style4">
                                          <table style="width: 1118px; height: 437px;">
                                              <tr>
                                                  <td class="auto-style5" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage1" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Name :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style10" bgcolor="#99FF66">
                                                      <asp:Label ID="lblFileName" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style6" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage2" runat="server" Font-Size="Large" ForeColor="Black">Category 
                                                      :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style11" bgcolor="#99FF66">
                                                      <asp:Label ID="lblCategory" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style7" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage6" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Size:</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style12" bgcolor="#99FF66">
                                                      <asp:Label ID="lblSize" runat="server" Font-Size="Large" ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style8" valign="top" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage7" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Block:</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style13" bgcolor="Yellow">
                                                      <asp:TextBox ID="txtContent" runat="server" Height="101px" TextMode="MultiLine" 
                                                          Width="754px"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style15" bgcolor="#99FFCC" align="center">
                                                  </td>
                                                  <td align="left" class="auto-style14" bgcolor="#CCFF33">
                                                      <asp:Button ID="btnDecrypt" runat="server" onclick="btnDecrypt_Click" 
                                                          Text="GetKey" Width="755px" style="margin-bottom: 0px;" BackColor="#FFFF66" 
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
            width: 133px;
        }
        .style52
        {
            height: 36px;
        }
        .style44
        {
            height: 30px;
            width: 133px;
        }
        .style53
        {
            height: 30px;
        }
        .style56
        {
            height: 35px;
            width: 133px;
        }
        .style57
        {
            height: 35px;
        }
        .style39
        {
            height: 92px;
            width: 133px;
        }
        .style40
        {
            height: 92px;
        }
        .style59
        {
            height: 42px;
            width: 133px;
        }
        .style55
        {
            height: 42px;
            }
        .style58
        {
            height: 42px;
            width: 152px;
        }
        .style60
        {
            height: 42px;
        }
    .auto-style4 {
        width: 986px;
    }
    .auto-style5 {
        height: 36px;
        width: 155px;
    }
    .auto-style6 {
        height: 30px;
        width: 155px;
    }
    .auto-style7 {
        height: 35px;
        width: 155px;
    }
    .auto-style8 {
        height: 92px;
        width: 155px;
    }
        .auto-style10 {
            height: 36px;
            width: 774px;
        }
        .auto-style11 {
            height: 30px;
            width: 774px;
        }
        .auto-style12 {
            height: 35px;
            width: 774px;
        }
        .auto-style13 {
            height: 92px;
            width: 774px;
        }
        .auto-style14 {
            height: 42px;
            width: 774px;
        }
        .auto-style15 {
            height: 42px;
            width: 155px;
        }
    </style>

</asp:Content>

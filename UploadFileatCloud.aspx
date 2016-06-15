<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AddAdminData.master"  CodeFile="UploadFileatCloud.aspx.cs" Inherits="UploadFileatCloud" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                              <table style="width: 100%; width: 1118px; height: 456px; margin-left: 6px;">
                                  <tr>
                                      <td class="style60">
                                          <table style="width: 100%; height: 353px;">
                                              <tr>
                                                  <td class="auto-style6" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage1" runat="server" Font-Size="Large" ForeColor="Black">User 
                                                      Name :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style17" bgcolor="#99FF66">
                                                      <asp:Label ID="lblUserName" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style7" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage2" runat="server" Font-Size="Large" ForeColor="Black">Category 
                                                      :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style18" bgcolor="#99FF66">
                                                      <asp:Label ID="lblCategory" runat="server" Font-Size="Large" 
                                                          ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style8" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage6" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Size:</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style19" bgcolor="#99FF66">
                                                      <asp:Label ID="lblSize" runat="server" Font-Size="Large" ForeColor="#663300"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style9" valign="top" align="center" bgcolor="#99FFCC">
                                                      <asp:Label ID="lblMessage7" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Block:</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style20" bgcolor="Yellow">
                                                      <asp:TextBox ID="txtContent" runat="server" Height="101px" TextMode="MultiLine" 
                                                          Width="753px" BackColor="#FFFF99"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style10" align="center" bgcolor="#99FFCC">
                                                  </td>
                                                  <td align="left" class="auto-style21" bgcolor="#99FF33">
                                                      <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                                                          Text="Upload" Width="754px" style="margin-bottom: 0px;" BackColor="Lime" 
                                                          BorderStyle="Solid" BorderWidth="1px" Height="24px" />
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <table style="width: 100%; height: 115px;">
                                              <tr>
                                                  <td align="center" bgcolor="#CCFF33" class="auto-style12">
                                                      <asp:Label ID="Label2" runat="server" Text="Start Time "></asp:Label>
                                                  </td>
                                                  <td align="center" bgcolor="#CCFF33" class="auto-style27">
                                                      <asp:Label ID="lblStartMili" runat="server" ForeColor="#990000"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili0" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style24" bgcolor="#CCFF33" align="center">
                                                      <asp:Label ID="Label3" runat="server" Text="End Time"></asp:Label>
                                                  </td>
                                                  <td align="center" bgcolor="#CCFF33" class="auto-style27">
                                                      <asp:Label ID="lblEndMili" runat="server" ForeColor="#990000"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili1" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td bgcolor="#CCFF33" class="auto-style12" align="center">
                                                      <asp:Label ID="Label4" runat="server" Text="Time Taken"></asp:Label>
                                                  </td>
                                                  <td align="center" bgcolor="#CCFF33" class="auto-style16">
                                                      <asp:Label ID="lblMiliSec" runat="server" ForeColor="#990000"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili2" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td bgcolor="#CCFF33" class="auto-style26">
                                                      <asp:Label ID="Label5" runat="server" Text="Start Time " ForeColor="#CCFF33"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#CCFF33" class="auto-style28">
                                                      <asp:Label ID="lblStartSec" runat="server" ForeColor="#CCFF33"></asp:Label>
                                                      &nbsp;<asp:Label ID="lblStartMili3" runat="server" ForeColor="#CCFF33">Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style25" bgcolor="#CCFF33">
                                                      <asp:Label ID="Label7" runat="server" Text="End Time" ForeColor="#CCFF33"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#CCFF33" class="auto-style28">
                                                      <asp:Label ID="lblEndSec" runat="server" ForeColor="#CCFF33"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili4" runat="server" ForeColor="#CCFF33">Sec</asp:Label>
                                                  </td>
                                                  <td bgcolor="#CCFF33" class="auto-style26">
                                                      <asp:Label ID="Label9" runat="server" Text="Time Taken" ForeColor="#CCFF33"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#CCFF33" class="auto-style29">
                                                      <asp:Label ID="lblSec" runat="server" ForeColor="#CCFF33"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili5" runat="server" ForeColor="#CCFF33">Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td bgcolor="#CCFF33" class="auto-style26">
                                                      <asp:Label ID="Label6" runat="server" Text="Start Time " ForeColor="#CCFF33"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#CCFF33" class="auto-style28">
                                                      <asp:Label ID="lblStartMinute" runat="server" ForeColor="#CCFF33"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili6" runat="server" ForeColor="#CCFF33">Minute</asp:Label>
                                                  </td>
                                                  <td class="auto-style25" bgcolor="#CCFF33">
                                                      <asp:Label ID="Label8" runat="server" Text="End Time" ForeColor="#CCFF33"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#CCFF33" class="auto-style28">
                                                      <asp:Label ID="lblEndMinute" runat="server" ForeColor="#CCFF33"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili9" runat="server" ForeColor="#CCFF33">Minute</asp:Label>
                                                  </td>
                                                  <td bgcolor="#CCFF33" class="auto-style26">
                                                      <asp:Label ID="Label10" runat="server" Text="Time Taken" ForeColor="#CCFF33"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#CCFF33" class="auto-style29">
                                                      <asp:Label ID="lblMinute" runat="server" ForeColor="#CCFF33"></asp:Label>
                                                      &nbsp;
                                                      <asp:Label ID="lblStartMili10" runat="server" ForeColor="#CCFF33">Minute</asp:Label>
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
        .style60
        {
            height: 230px;
        }
        .style51
        {
            width: 100px;
        }
        .auto-style6 {
        height: 36px;
        width: 155px;
    }
    .auto-style7 {
        height: 30px;
        width: 155px;
    }
    .auto-style8 {
        height: 35px;
        width: 155px;
    }
    .auto-style9 {
        height: 92px;
        width: 155px;
    }
    .auto-style10 {
        height: 42px;
        width: 155px;
    }
    .auto-style12 {
        width: 134px;
        height: 63px;
    }
    .auto-style16 {
        height: 63px;
            width: 218px;
        }
        .auto-style17 {
            height: 36px;
            width: 892px;
        }
        .auto-style18 {
            height: 30px;
            width: 892px;
        }
        .auto-style19 {
            height: 35px;
            width: 892px;
        }
        .auto-style20 {
            height: 92px;
            width: 892px;
        }
        .auto-style21 {
            height: 42px;
            width: 892px;
        }
        .auto-style24 {
            width: 133px;
            height: 63px;
        }
        .auto-style25 {
            width: 133px;
        }
        .auto-style26 {
            width: 134px;
        }
        .auto-style27 {
            width: 217px;
            height: 63px;
        }
        .auto-style28 {
            width: 217px;
        }
        .auto-style29 {
            width: 218px;
        }
        </style>


</asp:Content>
